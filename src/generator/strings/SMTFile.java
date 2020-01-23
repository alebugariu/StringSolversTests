/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings;

import java.util.ArrayList;
import java.util.List;

import com.microsoft.z3.BoolExpr;

import generator.operations.Operation;
import generator.strings.types.SMTConstructedObject;

public class SMTFile {

	private String name;
	private Operation operation;
	private NamedExpression namedSMTFormula;
	private List<NamedExpression> additionalNamedFormulas;
	private List<SMTConstructedObject> allSymbolicArguments;
	private List<String> unsatCore;

	public SMTFile(String name, Operation operation, NamedExpression namedSMTFormula,
			List<NamedExpression> additionalNamedFormulas, List<SMTConstructedObject> allSymbolicArguments,
			List<String> unsatCore) {
		this.name = name;
		this.operation = operation;
		this.namedSMTFormula = namedSMTFormula;
		this.additionalNamedFormulas = additionalNamedFormulas;
		this.allSymbolicArguments = allSymbolicArguments;
		this.unsatCore = unsatCore;
	}

	public String getName() {
		return name;
	}

	public Operation getOperation() {
		return operation;
	}

	public NamedExpression getNamedSMTFormula() {
		return namedSMTFormula;
	}

	public List<NamedExpression> getAdditionalNamedFormulas() {
		return additionalNamedFormulas;
	}

	public List<SMTConstructedObject> getAllSymbolicArguments() {
		return allSymbolicArguments;
	}

	public List<BoolExpr> getAdditionalFormulas() {
		List<BoolExpr> additionalFormulas = new ArrayList<BoolExpr>();
		for (NamedExpression namedFormula : additionalNamedFormulas) {
			additionalFormulas.add(namedFormula.getFormula());
		}
		return additionalFormulas;
	}

	public List<String> getUnsatCore() {
		return unsatCore;
	}

}
