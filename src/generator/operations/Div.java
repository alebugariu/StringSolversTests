/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations;

import java.util.List;

import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import com.microsoft.z3.IntExpr;

import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.utils.SMTStringUtils;

public class Div extends Operation {

	private SMTInt left;
	private SMTInt right;

	public Div(List<SMTConstructedObject> arguments) {
		super(arguments);
		left = (SMTInt) arguments.get(0);
		right = (SMTInt) arguments.get(1);
	}

	public Div(SMTConstructedObject left, SMTConstructedObject right) {
		super(SMTStringUtils.convertArgumentsToList(left, right));
		this.left = (SMTInt) left;
		this.right = (SMTInt) right;
	}

	@Override
	public Expr toSMT(Context ctx) {
		Expr leftFormula = left.toSMT(ctx);
		Expr rightFormula = right.toSMT(ctx);
		return ctx.mkDiv((IntExpr) leftFormula, (IntExpr) rightFormula);
	}

	@Override
	public SMTConstructedObject apply() {
		if (atLeastOneUnconstrainedArgument()) {
			return new SMTInt(AbstractExpressionsGenerator.unconstrained, this);
		}
		int result = left.getIntValue() / right.getIntValue();
		return new SMTInt(result, this);
	}

	@Override
	public Operation copy(List<SMTConstructedObject> arguments) {
		// should not be needed
		return null;
	}

	@Override
	public int getId() {
		// should not be needed
		return 0;
	}

}
