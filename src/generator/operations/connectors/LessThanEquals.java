/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.connectors;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import com.microsoft.z3.IntExpr;

public class LessThanEquals extends Connector {

	public LessThanEquals(SMTElement left, SMTElement right) {
		super(left, right);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		Expr leftFormula = left.toSMT(ctx);
		Expr rightFormula = right.toSMT(ctx);
		return ctx.mkLe((IntExpr) leftFormula, (IntExpr) rightFormula);
	}

	@Override
	public SMTElement copy() {
		return new LessThanEquals(left.copy(), right.copy());
	}
}
