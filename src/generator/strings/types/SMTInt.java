/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings.types;

import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import com.microsoft.z3.IntExpr;
import com.microsoft.z3.Sort;

import generator.operations.Operation;
import generator.strings.utils.SMTStringUtils;

public class SMTInt extends SMTConstructedObject {

	public SMTInt(String value, Operation history) {
		super(value, history);
	}

	public SMTInt(String value, Operation history, boolean isConstant) {
		super(value, history, isConstant);
	}

	public SMTInt(String name, String value, Operation history, boolean isConstant) {
		super(name, value, null, history, isConstant, isConstant);
	}

	public SMTInt(String name, String value, String witness, Operation history, boolean isConstant,
			boolean relevantForUnsatCore) {
		super(name, value, witness, history, isConstant, relevantForUnsatCore);
	}

	public SMTInt(int value, Operation history) {
		super(String.valueOf(value), history);
	}

	public SMTInt(int value, Operation history, boolean isConstant) {
		super(String.valueOf(value), history, isConstant);
	}

	public int getIntValue() {
		return Integer.parseInt(super.getValue());
	}

	@Override
	public SMTInt shallowCopy() {
		return (SMTInt) super.shallowCopy();
	}

	@Override
	public SMTInt genericHistory() {
		return (SMTInt) super.genericHistory();
	}

	@Override
	public SMTConstructedObject copy(String name, String value, Operation history, boolean isConstant) {
		// the current value is the witness
		return new SMTInt(name, value, value, history, isConstant, relevantForUnsatCore);
	}

	@Override
	public Sort getSMTSort(Context ctx) {
		return ctx.getIntSort();
	}

	@Override
	public IntExpr toSMTwithoutHistory(Context ctx) {
		if (this.isConstant) {
			// with constant values
			return ctx.mkInt(getValue());
		}
		// abstract ints
		return SMTStringUtils.tmpInt(ctx, this);
	}

	@Override
	public IntExpr toSMT(Context ctx) {
		Operation history = getHistory();
		if (history == null) {
			return toSMTwithoutHistory(ctx);
		}
		Expr historyToSMT = history.toSMT(ctx);
		return (IntExpr) historyToSMT;
	}

	@Override
	public void constructName(int index) {
		this.name = SMTConstructedObject.tmpInt + index;
	}
}
