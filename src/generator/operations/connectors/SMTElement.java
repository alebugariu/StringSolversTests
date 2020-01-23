/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.connectors;

import java.util.HashMap;
import java.util.List;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;

import generator.strings.types.SMTConstructedObject;
import generator.strings.utils.SMTStringUtils;

public abstract class SMTElement {

	protected BoolExpr asSmtFormula;
	protected SMTElement enclosingElement;
	private boolean isMainRewritingRule = false;

	public BoolExpr toSMTFormula(Context ctx) {
		return smtFormula(ctx);
	}

	public void setAsMainRewritingRule() {
		this.isMainRewritingRule = true;
	}

	public boolean isMainRewritingRule() {
		return isMainRewritingRule;
	}

	// should be overridden by Operation and Connector
	protected abstract BoolExpr smtFormula(Context ctx);

	// should be overridden by SMTConstructedObject and by the operations which can
	// be part of history of the other operations
	public abstract Expr toSMT(Context ctx);

	// the symbolic arguments (mostly for the unsat case)
	public abstract List<SMTConstructedObject> getAllSymbolicArguments();

	public abstract List<SMTConstructedObject> getConstantArguments();

	// all the arguments (for assigning their names)
	public abstract List<SMTConstructedObject> getAllArguments();

	// the witnesses for the sat case
	public abstract List<SMTConstructedObject> getWitnesses();

	@Override
	public String toString() {
		try {
			HashMap<String, String> cfg = new HashMap<String, String>();
			cfg.put("model", "true");
			Context ctx = new Context(cfg);

			asSmtFormula = toSMTFormula(ctx);
			return asSmtFormula.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return "SOME ARGUMENTS DON'T HAVE NAMES YET";
		}
	}

	public abstract SMTElement copy();

	@Override
	public boolean equals(Object other) {
		if (this.getClass() != other.getClass()) {
			return false;
		}
		SMTElement otherElement = (SMTElement) other;
		return this.isEquivalentTo(otherElement);
	}

	protected abstract boolean isEquivalentTo(SMTElement other);

	public SMTElement getEnclosingElement() {
		return enclosingElement;
	}

	public void setEnclosingElement(SMTElement enclosingElement) {
		this.enclosingElement = enclosingElement;
	}

	public void assignNamesToArguments() {
		List<SMTConstructedObject> allArguments = getAllArguments();
		int higherIndex = SMTStringUtils.computeHigherIndex(allArguments) + 1;
		for (int index = 0; index < allArguments.size(); index++) {
			SMTConstructedObject argument = allArguments.get(index);
			String name = argument.getName();
			if (name == null) {
				argument.constructName(higherIndex + index);
			}
		}
	}

}
