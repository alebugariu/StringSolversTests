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
import com.microsoft.z3.SeqExpr;
import com.microsoft.z3.Sort;

import generator.operations.Operation;
import generator.operations.strings.Length;
import generator.operations.strings.StringOperation;
import generator.strings.utils.SMTStringUtils;

public class SMTString extends SMTConstructedObject {

	public SMTString(String value, Operation history) {
		super(value, history);
	}

	public SMTString(String value, Operation history, boolean isConstant) {
		super(value, history, isConstant);
	}

	public SMTString(String name, String value, Operation history, boolean isConstant) {
		super(name, value, null, history, isConstant, isConstant);
	}

	public SMTString(String name, String value, String witness, Operation history, boolean isConstant,
			boolean relevantForUnsatCore) {
		super(name, value, witness, history, isConstant, relevantForUnsatCore);
	}

	@Override
	public StringOperation getHistory() {
		return (StringOperation) super.getHistory();
	}

	private Length getLength() {
		Length lenght = null;
		try {
			lenght = new Length(this);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lenght;
	}

	public Integer getIntLength() {
		Length lengthProperty = getLength();
		Integer length = ((SMTInt) lengthProperty.getResult()).getIntValue();
		return length;
	}

	public SMTInt toInt() {
		return new SMTInt(value, getHistory(), isConstant);
	}

	@Override
	public SMTString shallowCopy() {
		return (SMTString) super.shallowCopy();
	}

	@Override
	public SMTString genericHistory() {
		return (SMTString) super.genericHistory();
	}

	@Override
	public SMTConstructedObject copy(String name, String value, Operation history, boolean isConstant) {
		// the current value is the witness
		return new SMTString(name, value, value, history, isConstant, relevantForUnsatCore);
	}

	@Override
	public Sort getSMTSort(Context ctx) {
		return ctx.getStringSort();
	}

	@Override
	public SeqExpr toSMTwithoutHistory(Context ctx) {
		if (this.isConstant) {
			// with constant values
			return ctx.mkString(getValue());
		}
		// abstract strings
		return SMTStringUtils.tmpString(ctx, this);
	}

	@Override
	public SeqExpr toSMT(Context ctx) {
		StringOperation history = getHistory();
		if (history == null) {
			return toSMTwithoutHistory(ctx);
		}
		Expr historyToSMT = history.toSMT(ctx);
		return (SeqExpr) historyToSMT;
	}

	@Override
	public void constructName(int index) {
		this.name = SMTConstructedObject.tmpString + index;
	}
}
