/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings.types;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import com.microsoft.z3.Sort;

import generator.operations.Operation;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.utils.SMTStringUtils;

public class SMTBool extends SMTConstructedObject {

	public SMTBool(String value, Operation history, boolean isConstant) {
		super(value, history, isConstant);
	}

	public SMTBool(boolean value, Operation history, boolean isConstant) {
		super(String.valueOf(value), history, isConstant);
	}

	public SMTBool(boolean value, Operation history) {
		super(String.valueOf(value), history);
	}

	public SMTBool(String name, String value, String witness, Operation history, boolean isConstant,
			boolean relevantForUnsatCore) {
		super(name, value, witness, history, isConstant, relevantForUnsatCore);
	}

	public Boolean getBoolValue() {
		if (!value.equals(AbstractExpressionsGenerator.unconstrained)) {
			return Boolean.parseBoolean(value);
		}
		return Boolean.parseBoolean(getWitness());

	}

	@Override
	public SMTConstructedObject copy(String name, String value, Operation history, boolean isConstant) {
		return new SMTBool(name, value, witness, history, isConstant, relevantForUnsatCore);
	}

	@Override
	public Sort getSMTSort(Context ctx) {
		return ctx.getBoolSort();
	}

	@Override
	public Expr toSMTwithoutHistory(Context ctx) {
		if (this.isConstant) {
			// with constant values
			return ctx.mkBool(getBoolValue());
		}
		// abstract booleans
		return SMTStringUtils.tmpBool(ctx, this);
	}

	@Override
	public Expr toSMT(Context ctx) {
		Operation history = getHistory();
		if (history == null) {
			return toSMTwithoutHistory(ctx);
		}
		Expr historyToSMT = history.toSMT(ctx);
		return (BoolExpr) historyToSMT;
	}

	@Override
	public void constructName(int index) {
		this.name = SMTConstructedObject.tmpBool + index;
	}
}
