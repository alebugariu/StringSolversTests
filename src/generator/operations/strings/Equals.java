/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.strings;

import java.util.HashMap;
import java.util.List;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;

import generator.operations.Operation;
import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.utils.SMTStringUtils;

public class Equals extends StringOperation {

	private SMTConstructedObject first;
	private SMTConstructedObject second;

	public Equals(SMTConstructedObject first, SMTConstructedObject second) {
		this(first, second, null);
	}

	public Equals(List<SMTConstructedObject> arguments) {
		super(arguments);
		first = arguments.get(0);
		second = arguments.get(1);
	}

	public Equals(SMTConstructedObject first, SMTConstructedObject second, SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(first, second));
		this.first = first;
		this.second = second;
		if (result == null) {
			result = apply();
		}
		this.setResult((SMTBool) result);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		Expr firstFormula = first.toSMT(ctx);
		Expr secondFormula = second.toSMT(ctx);
		BoolExpr equals = ctx.mkEq(firstFormula, secondFormula);

		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(equals, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(equals, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	@Override
	public Expr toSMT(Context ctx) {
		Expr firstFormula = first.toSMT(ctx);
		Expr secondFormula = second.toSMT(ctx);
		return ctx.mkEq(firstFormula, secondFormula);
	}

	@Override
	public SMTConstructedObject apply() {
		refresh();
		if (atLeastOneUnconstrainedArgument()) {
			return new SMTBool(AbstractExpressionsGenerator.unconstrained, this, !isConstant);
		}
		String firstValue = first.getValue();
		String secondValue = second.getValue();
		String firstWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(firstValue);
		String secondWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(secondValue);
		return new SMTBool(firstWithoutSpecialCharacters.equals(secondWithoutSpecialCharacters), this, true);
	}

	@Override
	public Operation copy(List<SMTConstructedObject> arguments) {
		return new Equals(arguments);
	}

	@Override
	public int getId() {
		SMTBool result = (SMTBool) getResult();
		String value = result.getValue();
		if (value.equals(AbstractExpressionsGenerator.unconstrained) || value.equals("true")) {
			return AbstractExpressionsGenerator.EQUALS;
		}
		return AbstractExpressionsGenerator.NOT_EQUALS;
	}

	@Override
	public RewritingRule getRewritingRule() {
		int id = getId();
		if (id == AbstractExpressionsGenerator.EQUALS) {
			return rewritingRule_TrueCase();
		}
		return rewritingRule_FalseCase();
	}

	private RewritingRule rewritingRule_TrueCase() {
		// primitive operation, no rewriting rule
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this,
				new HashMap<SMTElement, Boolean>());
		return rule;
	}

	private RewritingRule rewritingRule_FalseCase() {
		// primitive operation, no rewriting rule
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this,
				new HashMap<SMTElement, Boolean>());
		return rule;
	}

}
