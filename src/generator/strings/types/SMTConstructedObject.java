/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings.types;

import java.util.ArrayList;
import java.util.List;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import com.microsoft.z3.Sort;

import generator.operations.Operation;
import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.utils.SMTStringUtils;

public abstract class SMTConstructedObject extends SMTElement {

	protected String name;
	protected String value;
	protected String witness;
	protected Operation history;
	protected boolean isConstant;
	protected boolean relevantForUnsatCore;
	public static final String tmpString = "tmp_str";
	public static final String tmpInt = "tmp_int";
	public static final String tmpBool = "tmp_bool";

	public SMTConstructedObject(String value, Operation history) {
		this.value = value;
		this.history = history;
		this.isConstant = false;
		this.relevantForUnsatCore = false;
		constructName(SMTStringUtils.tmpVariablesCounter++);
	}

	public SMTConstructedObject(String value, Operation history, boolean isConstant) {
		this(value, history);
		this.isConstant = isConstant;
		this.relevantForUnsatCore = isConstant; // constant strings/ints are relevant for the unsat core
	}

	public SMTConstructedObject(String name, String value, String witness, Operation history, boolean isConstant,
			boolean relevantForUnsatCore) {
		this(value, history, isConstant);
		this.name = name;
		this.witness = witness;
		this.relevantForUnsatCore = relevantForUnsatCore;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public abstract void constructName(int index);

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public void setWitness(String value) {
		this.witness = value;
	}

	public String getWitness() {
		if (witness == null && value.equals(AbstractExpressionsGenerator.unconstrained)) {
			return AbstractExpressionsGenerator.unconstrained;
		}
		return witness;
	}

	@Override
	public List<SMTConstructedObject> getWitnesses() {
		return getAllSymbolicArguments();
	}

	public boolean isConstant() {
		return isConstant;
	}

	public void setIsConstant(boolean isConstant) {
		this.isConstant = isConstant;
	}

	public Operation getHistory() {
		return history;
	}

	public void setHistory(Operation history) {
		this.history = history;
	}

	public void relevantForUnsatCore(boolean flag) {
		this.relevantForUnsatCore = flag;
	}

	public boolean isRelevantForUnsatCore() {
		return relevantForUnsatCore;
	}

	@Override
	public boolean equals(Object other) {
		if (!(other instanceof SMTConstructedObject)) {
			return false;
		}
		SMTConstructedObject otherObject = (SMTConstructedObject) other;
		String otherValue = otherObject.value;
		Operation otherHistory = otherObject.history;
		if (this.history == null && otherHistory != null) {
			return false;
		}
		if (this.history != null && otherHistory == null) {
			return false;
		}
		if (this.isConstant != otherObject.isConstant) {
			return false;
		}
		value = SMTStringUtils.withoutSpecialCharacters(value);
		otherValue = SMTStringUtils.withoutSpecialCharacters(otherValue);
		return value.equals(otherValue)
				&& (this.history == null && otherHistory == null || this.history.equals(otherHistory));
	}

	@Override
	public String toString() {
		String representation = name + " = " + value;
		if (!isConstant) {
			if (witness == null && value.equals(AbstractExpressionsGenerator.unconstrained)) {
				representation += " [" + AbstractExpressionsGenerator.unconstrained + "]";
			} else {
				representation += " [" + witness + "]";
			}
		}
		return representation;
	}

	public SMTConstructedObject shallowCopy() {
		return copy(name, value, null, isConstant);
	}

	public SMTConstructedObject shallowCopyWithoutName() {
		return copy(null, value, null, isConstant);
	}

	public SMTConstructedObject genericHistory() {
		if (history != null) {
			return copy(name, value, history.genericCopy(), isConstant);
		}
		return shallowCopy();
	}

	public int computeHistoryDepth() {
		if (history == null) {
			return 0;
		}
		return 1 + history.getHistoryDepth();
	}

	@Override
	public SMTConstructedObject copy() {
		if (history == null) {
			return shallowCopy();
		}
		return copy(name, value, history.copy(), isConstant);
	}

	public SMTConstructedObject copyWithoutName() {
		if (history == null) {
			return shallowCopyWithoutName();
		}
		return copy(null, value, history.copyWithoutName(), isConstant);
	}

	public SMTConstructedObject genericCopy() {
		return copy(name, value, history, false);
	}

	public abstract SMTConstructedObject copy(String name, String value, Operation history, boolean isConstant);

	public abstract Sort getSMTSort(Context ctx);

	public abstract Expr toSMTwithoutHistory(Context ctx);

	@Override
	public boolean isEquivalentTo(SMTElement other) {
		if (this.getClass() != other.getClass()) {
			return false;
		}
		SMTConstructedObject otherObject = (SMTConstructedObject) other;
		if ((otherObject.value.equals(AbstractExpressionsGenerator.unconstrained) && otherObject.history == null)
				|| (this.value.equals(AbstractExpressionsGenerator.unconstrained) && this.history == null)) {
			return true;
		}
		return this.equals(otherObject);
	}

	@Override
	public List<SMTConstructedObject> getAllSymbolicArguments() {
		List<SMTConstructedObject> allSymbolicArguments = new ArrayList<SMTConstructedObject>();
		if (!this.isConstant) {
			allSymbolicArguments.add(this);
		}
		return allSymbolicArguments;
	}

	@Override
	public List<SMTConstructedObject> getConstantArguments() {
		List<SMTConstructedObject> allConstantArguments = new ArrayList<SMTConstructedObject>();
		if (this.isConstant) {
			allConstantArguments.add(this);
		}
		return allConstantArguments;
	}

	@Override
	public List<SMTConstructedObject> getAllArguments() {
		List<SMTConstructedObject> allArguments = new ArrayList<SMTConstructedObject>();
		allArguments.add(this);
		return allArguments;
	}

	@Override
	protected BoolExpr smtFormula(Context ctx) {
		return null;
	}

	public List<Integer> getConstructionHistory() {
		List<Integer> constructionHistory = new ArrayList<Integer>();
		if (history != null) {
			constructionHistory.add(history.getId());
			constructionHistory.addAll(history.getHistoryForArguments());
		}
		return constructionHistory;
	}
}
