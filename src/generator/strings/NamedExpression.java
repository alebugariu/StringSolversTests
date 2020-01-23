/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings;

import com.microsoft.z3.BoolExpr;

public class NamedExpression {

	private String name;
	private BoolExpr formula;

	public NamedExpression(String name, BoolExpr formula) {
		this.name = name;
		this.formula = formula;
	}

	public String getName() {
		return name;
	}

	public BoolExpr getFormula() {
		return formula;
	}
}
