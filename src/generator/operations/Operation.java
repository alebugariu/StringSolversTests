/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations;

import java.util.ArrayList;
import java.util.List;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;

import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.utils.SMTStringUtils;
import runner.Status;

public abstract class Operation extends SMTElement {

	public static boolean isConstant = true;

	protected List<SMTConstructedObject> arguments;

	// history depth == the maximum history depth of its arguments
	protected int historyDepth = -1;
	private SMTConstructedObject operationResult;

	protected Operation(List<SMTConstructedObject> arguments) {
		this.arguments = arguments;
		this.historyDepth = computeHistoryDepth();
	}

	private int computeHistoryDepth() {
		int max = 0;
		for (SMTConstructedObject arg : arguments) {
			int depth = arg.computeHistoryDepth();
			if (depth > max) {
				max = depth;
			}
		}
		return max;
	}

	public abstract SMTConstructedObject apply();

	public int getHistoryDepth() {
		return historyDepth;
	}

	public SMTConstructedObject getResult() {
		if (operationResult == null) {
			operationResult = apply();
		}
		return operationResult;
	}

	public void setResult(SMTConstructedObject result) {
		operationResult = result;
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && !resultHistory.equals(this)) {
			resultHistory.setEnclosingElement(this);
		}
	}

	// all the arguments and the result are generic, including the arguments of the
	// history
	public boolean isGeneric() {
		boolean onlyGenericArguments = onlyGenericArguments();
		return onlyGenericArguments && !getResult().isConstant();
	}

	private boolean onlyGenericArguments() {
		for (SMTConstructedObject argument : arguments) {
			Operation history = argument.getHistory();
			if (argument.isConstant() && history == null) {
				return false;
			}
			if (history != null && !history.onlyGenericArguments()) {
				return false;
			}
		}
		return true;
	}

	// propagate the results of the inner operations
	protected void refresh() {
		for (SMTConstructedObject argument : arguments) {
			Operation history = argument.getHistory();
			if (history != null) {
				SMTConstructedObject historyResult = history.apply();
				argument.setValue(historyResult.getValue());
				argument.setWitness(historyResult.getWitness());
			}

		}
	}

	protected boolean atLeastOneUnconstrainedArgument() {
		for (SMTConstructedObject argument : arguments) {
			if (argument.getValue().equals(AbstractExpressionsGenerator.unconstrained)) {
				return true;
			}
		}
		return false;
	}

	// all arguments + results that are constant from this operation and its history
	@Override
	public List<SMTConstructedObject> getConstantArguments() {
		List<SMTConstructedObject> constantArguments = getAllConstantArguments();
		SMTConstructedObject result = getResult();
		if (result.isConstant()) {
			constantArguments.add(result);
			Operation resultHistory = result.getHistory();
			if (resultHistory != null && !resultHistory.equals(this)) {
				constantArguments = SMTStringUtils.unionWithoutDuplicates(constantArguments,
						resultHistory.getAllConstantArguments());
			}
		}
		return constantArguments;
	}

	private List<SMTConstructedObject> getAllConstantArguments() {
		List<SMTConstructedObject> allArguments = new ArrayList<SMTConstructedObject>();
		for (SMTConstructedObject arg : arguments) {
			Operation history = arg.getHistory();
			if (arg.isConstant() && history == null) {
				allArguments.add(arg);
			}
			if (history != null) {
				allArguments = SMTStringUtils.unionWithoutDuplicates(allArguments, history.getAllConstantArguments());
			}
		}
		return allArguments;
	}

	// all arguments + results that are not constant from this operation and its
	// history
	@Override
	public List<SMTConstructedObject> getAllSymbolicArguments() {
		List<SMTConstructedObject> allArguments = getAllNonConstantArguments();
		SMTConstructedObject result = getResult();
		// boolean results have to be written explicitly for unsat formulas
		if (!result.isConstant()
				&& (AbstractExpressionsGenerator.expectedStatus == Status.sat && enclosingElement == null
						|| (AbstractExpressionsGenerator.expectedStatus == Status.unsat
								&& (enclosingElement == null || result instanceof SMTBool)))) {
			Operation resultHistory = result.getHistory();
			if (resultHistory != null && !resultHistory.equals(this)) {
				allArguments = SMTStringUtils.unionWithoutDuplicates(allArguments,
						resultHistory.getAllSymbolicArguments());
			} else {
				allArguments = SMTStringUtils.addWithoutDuplicates(allArguments, result);
			}
		}
		return allArguments;

	}

	private List<SMTConstructedObject> getAllNonConstantArguments() {
		List<SMTConstructedObject> allArguments = new ArrayList<SMTConstructedObject>();
		for (SMTConstructedObject arg : arguments) {
			Operation history = arg.getHistory();
			if (!arg.isConstant() && history == null) {
				allArguments = SMTStringUtils.addWithoutDuplicates(allArguments, arg);
			}
			if (history != null && !history.equals(this)) {
				allArguments = SMTStringUtils.unionWithoutDuplicates(allArguments,
						history.getAllNonConstantArguments());
			}
		}
		return allArguments;
	}

	// all arguments + results from this operation and its history
	@Override
	public List<SMTConstructedObject> getAllArguments() {
		List<SMTConstructedObject> allArguments = allArguments();
		SMTConstructedObject result = getResult();
		allArguments.add(result);
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && !resultHistory.equals(this)) {
			allArguments.addAll(resultHistory.getAllArguments());
		}
		return allArguments;
	}

	private List<SMTConstructedObject> allArguments() {
		List<SMTConstructedObject> allArguments = new ArrayList<SMTConstructedObject>();
		for (SMTConstructedObject arg : arguments) {
			Operation history = arg.getHistory();
			if (history == null) {
				allArguments.add(arg);
			} else {
				allArguments.addAll(history.getAllArguments());
			}
		}
		return allArguments;
	}

	public List<SMTConstructedObject> getArguments() {
		return arguments;
	}

	@Override
	public List<SMTConstructedObject> getWitnesses() {
		return getAllSymbolicArguments();
	}

	// copy the operation without the history for some of the arguments and make
	// them generic
	public Operation shallowGenericCopy(List<Integer> positionsWithoutHistory) {
		int size = positionsWithoutHistory.size();
		if (size == 0) {
			return shallowCopy(positionsWithoutHistory);
		}
		List<Integer> argumentsPositionsWithoutHistory = positionsWithoutHistory;
		int lastIndex = positionsWithoutHistory.get(size - 1);
		if (lastIndex == arguments.size()) {
			argumentsPositionsWithoutHistory = positionsWithoutHistory.subList(0, size - 1);
		}
		Operation copy = shallowCopy(argumentsPositionsWithoutHistory);
		// the result of the copy has to be made generic
		if (lastIndex == arguments.size()) {
			copy.getResult().setIsConstant(false);
		}
		return copy;
	}

	// copy the operation without the history for some of the arguments
	private Operation shallowCopy(List<Integer> positionsWithoutHistory) {
		return copy(shallowArguments(positionsWithoutHistory));
	}

	// copy of the operation with all the arguments and the result made generic
	public Operation genericCopy() {
		Operation copy = shallowGenericCopy(new ArrayList<Integer>());
		copy.getResult().setIsConstant(false);
		copy.getResult().setWitness(getResult().getValue());
		return copy;
	}

	private List<SMTConstructedObject> shallowArguments(List<Integer> positionsWithoutHistory) {
		List<SMTConstructedObject> shallowArguments = new ArrayList<SMTConstructedObject>();
		for (int index = 0; index < arguments.size(); index++) {
			SMTConstructedObject currentArg = arguments.get(index);
			if (positionsWithoutHistory.contains(index)) {
				shallowArguments.add(currentArg.shallowCopy());
			} else {
				shallowArguments.add(currentArg.genericHistory());
			}
		}
		if (shallowArguments.isEmpty()) {
			for (SMTConstructedObject currentArg : arguments) {
				shallowArguments.add(currentArg.genericHistory());
			}
		}
		return shallowArguments;
	}

	public abstract Operation copy(List<SMTConstructedObject> arguments);

	@Override
	public Operation copy() {
		List<SMTConstructedObject> copiedArguments = new ArrayList<SMTConstructedObject>();
		for (SMTConstructedObject argument : arguments) {
			copiedArguments.add(argument.copy());
		}
		Operation copy = copy(copiedArguments);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		SMTConstructedObject copiedResult;
		if (resultHistory != null && !resultHistory.equals(this)) {
			copiedResult = result.copy();
		} else {
			copiedResult = result.shallowCopy();
		}
		copy.setResult(copiedResult);
		return copy;
	}

	public Operation copyWithoutName() {
		List<SMTConstructedObject> copiedArguments = new ArrayList<SMTConstructedObject>();
		for (SMTConstructedObject argument : arguments) {
			copiedArguments.add(argument.copyWithoutName());
		}
		Operation copy = copy(copiedArguments);
		SMTConstructedObject copiedResult = getResult().shallowCopyWithoutName();
		copy.setResult(copiedResult);
		return copy;
	}

	public abstract int getId();

	public void recomputeResult() {
		SMTConstructedObject newResult = apply();
		operationResult.setValue(newResult.getValue());
		operationResult.setIsConstant(newResult.isConstant());
	}

	@Override
	public boolean isEquivalentTo(SMTElement other) {
		if (this.getClass() != other.getClass()) {
			return false;
		}
		Operation otherOperation = (Operation) other;
		if (this.arguments.size() != otherOperation.arguments.size()) {
			return false;
		}
		for (int index = 0; index < this.arguments.size(); index++) {
			SMTConstructedObject arg = this.arguments.get(index);
			SMTConstructedObject otherArg = otherOperation.arguments.get(index);
			if (!arg.isEquivalentTo(otherArg)) {
				return false;
			}
		}
		return true;
	}

	@Override
	protected BoolExpr smtFormula(Context ctx) {
		return null;
	}

	public List<Integer> getHistoryForArguments() {
		List<Integer> historyList = new ArrayList<Integer>();
		if (this.getHistoryDepth() == 0) {
			return historyList;
		}
		for (SMTConstructedObject arg : arguments) {
			Operation history = arg.getHistory();
			historyList.add(history.getId());
		}
		return historyList;

	}

}
