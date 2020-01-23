/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings.generator;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import generator.operations.Operation;
import generator.operations.connectors.SMTElement;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.utils.SMTStringUtils;

public class RewritingRule {

	private String name;
	private Operation operation;
	// keeps track of the assertions which are part of the minimum unsat core
	private Map<SMTElement, Boolean> equivalentFormulasMap;

	public RewritingRule(String name, Operation operation, Map<SMTElement, Boolean> equivalentFormulas) {
		this.name = name;
		this.operation = operation;
		this.equivalentFormulasMap = equivalentFormulas;
	}

	public RewritingRule(String name, Operation operation, SMTElement equivalentFormula) {
		this.name = name;
		this.operation = operation;
		this.equivalentFormulasMap = new HashMap<SMTElement, Boolean>();
		equivalentFormula.setAsMainRewritingRule();
		this.equivalentFormulasMap.put(equivalentFormula, true);
	}

	public String getName() {
		return name;
	}

	public Operation getOperation() {
		return operation;
	}

	public Map<SMTElement, Boolean> getEquivalentFormulasMap() {
		return equivalentFormulasMap;
	}

	public Map<SMTElement, Boolean> getCopiedEquivalentFormulasMap() {
		Map<SMTElement, Boolean> copiedMap = new HashMap<SMTElement, Boolean>();
		for (SMTElement formula : equivalentFormulasMap.keySet()) {
			copiedMap.put(formula, equivalentFormulasMap.get(formula));
		}
		return copiedMap;
	}

	public Map<SMTElement, Boolean> getDeepCopiedEquivalentFormulasMap() {
		Map<SMTElement, Boolean> deepCopiedMap = new HashMap<SMTElement, Boolean>();
		for (SMTElement formula : equivalentFormulasMap.keySet()) {
			SMTElement copiedFormula = formula.copy();
			deepCopiedMap.put(copiedFormula, equivalentFormulasMap.get(formula));
		}
		return deepCopiedMap;
	}

	public List<SMTElement> getEquivalentFormulas() {
		List<SMTElement> equivalentFormulas = new ArrayList<SMTElement>();
		for (SMTElement formula : equivalentFormulasMap.keySet()) {
			equivalentFormulas.add(formula);
		}
		return equivalentFormulas;
	}

	private SMTElement getMainEquivalentFormula() {
		List<SMTElement> equivalentFormulas = getEquivalentFormulas();
		for (SMTElement formula : equivalentFormulas) {
			if (formula.isMainRewritingRule()) {
				return formula;
			}
		}
		return null;
	}

	public List<SMTConstructedObject> getAllSymbolicArgumentsFromEquivalentFormula() {
		SMTElement mainFormula = getMainEquivalentFormula();
		return mainFormula.getAllSymbolicArguments();
	}

	public List<SMTConstructedObject> getAllConstantArgumentsFromEquivalentFormula() {
		SMTElement mainFormula = getMainEquivalentFormula();
		return mainFormula.getConstantArguments();
	}

	@Override
	public String toString() {
		String representation = "";
		if (operation != null) {
			representation = operation.toString();
		}
		for (SMTElement equivalentFormula : equivalentFormulasMap.keySet()) {
			representation = representation + "\n" + equivalentFormula.toString();
		}
		return representation;
	}

	private boolean equalOperation(RewritingRule otherRewritingRule) {
		Operation otherOperation = otherRewritingRule.operation;
		if (this.operation == null && otherOperation == null) {
			return true;
		}
		if (this.operation == null && otherOperation != null || this.operation != null && otherOperation == null) {
			return false;
		}

		if (this.operation.getClass() != otherOperation.getClass()) {
			return false;
		}

		SMTConstructedObject result = this.operation.getResult();
		SMTConstructedObject otherResult = otherRewritingRule.operation.getResult();
		if (result instanceof SMTBool && otherResult instanceof SMTBool) {
			if (!result.equals(otherResult)) {
				return false;
			}
		} else if (!result.isEquivalentTo(otherResult)) {
			return false;
		}
		return this.operation.isEquivalentTo(otherOperation);
	}

	private boolean equalEquivalentFormulas(List<SMTElement> otherFormulas) {
		List<SMTElement> equivalentFormulas = getEquivalentFormulas();
		if (equivalentFormulas == null && otherFormulas == null) {
			return true;
		}
		if (equivalentFormulas == null && otherFormulas != null
				|| equivalentFormulas != null && otherFormulas == null) {
			return false;
		}
		if (equivalentFormulas.size() != otherFormulas.size()) {
			return false;
		}
		for (SMTElement otherFormula : otherFormulas) {
			if (!containsFormula(equivalentFormulas, otherFormula)) {
				return false;
			}
		}
		return true;
	}

	@Override
	public boolean equals(Object other) {
		if (this.getClass() != other.getClass()) {
			return false;
		}
		RewritingRule otherRewrittingRule = (RewritingRule) other;
		return equalOperation(otherRewrittingRule)
				&& equalEquivalentFormulas(otherRewrittingRule.getEquivalentFormulas());
	}

	private boolean containsFormula(List<SMTElement> formulas, SMTElement formula) {
		for (SMTElement aFormula : formulas) {
			String aFormulaAsString = "";
			try {
				aFormulaAsString = aFormula.toString();
			} catch (Exception e) {
				e.printStackTrace();
			}
			String formulaAsString = formula.toString();
			if (aFormulaAsString.equals(formulaAsString)) {
				return true;
			}
		}
		return false;
	}

	public void shortenTmpVariableNames() {
		List<SMTConstructedObject> allArguments = operation.getAllArguments();
		for (SMTElement formula : getEquivalentFormulas()) {
			allArguments.addAll(formula.getAllArguments());
		}
		List<Integer> indexes = SMTStringUtils.computeTmpVariablesIndexes(allArguments);
		int tmpVarIndex = 0;

		for (SMTConstructedObject argument : allArguments) {
			String priorName = argument.getName();
			String name = priorName.replaceAll(SMTConstructedObject.tmpBool, "");
			name = name.replaceAll(SMTConstructedObject.tmpInt, "");
			name = name.replaceAll(SMTConstructedObject.tmpString, "");
			name = name.replaceAll(UnsatExpressionsGenerator.fresh, "");
			try {
				while (indexes.contains(tmpVarIndex)) {
					tmpVarIndex++;
				}
				int number = Integer.parseInt(name);
				if (number > tmpVarIndex) {
					for (SMTConstructedObject argumentWithName : SMTStringUtils.getArgumentsWithName(allArguments,
							priorName)) {
						argumentWithName.constructName(tmpVarIndex);
					}
					tmpVarIndex++;
				}
			} catch (NumberFormatException e) {
				// do nothing
			}
		}
	}

}
