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

public class Implies extends Connector {

	public Implies(SMTElement left, SMTElement right) {
		super(left, right);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		BoolExpr leftFormula = left.smtFormula(ctx);
		BoolExpr rightFormula = right.smtFormula(ctx);
		return ctx.mkImplies(leftFormula, rightFormula);
	}

	@Override
	public SMTElement copy() {
		return new Implies(left.copy(), right.copy());
	}
}
