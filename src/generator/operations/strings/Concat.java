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
import com.microsoft.z3.SeqExpr;

import generator.operations.Operation;
import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTString;
import generator.strings.utils.SMTStringUtils;

public class Concat extends StringOperation {

	private SMTString first;
	private SMTString second;

	public Concat(SMTConstructedObject first, SMTConstructedObject second) {
		this(first, second, null);
	}

	public Concat(List<SMTConstructedObject> arguments) {
		super(arguments);
		first = (SMTString) arguments.get(0);
		second = (SMTString) arguments.get(1);
	}

	public Concat(SMTConstructedObject first, SMTConstructedObject second, SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(first, second));
		this.first = (SMTString) first;
		this.second = (SMTString) second;
		if (result == null) {
			result = apply();
		}
		this.setResult((SMTString) result);
	}

	@Override
	public SMTConstructedObject apply() {
		refresh();
		if (atLeastOneUnconstrainedArgument()) {
			return new SMTString(AbstractExpressionsGenerator.unconstrained, this);
		}
		String firstValue = first.getValue();
		String secondValue = second.getValue();

		String firstWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(firstValue);
		String secondWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(secondValue);

		return new SMTString(firstWithoutSpecialCharacters.concat(secondWithoutSpecialCharacters), this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		SeqExpr seqFirstString = first.toSMT(ctx);
		SeqExpr seqSecondString = second.toSMT(ctx);

		SeqExpr seqConcat = ctx.mkConcat(seqFirstString, seqSecondString);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(seqConcat, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(seqConcat, result.toSMT(ctx));
		}

		return asSmtFormula;
	}

	@Override
	public SeqExpr toSMT(Context ctx) {
		SeqExpr seqFirstString = first.toSMT(ctx);
		SeqExpr seqSecondString = second.toSMT(ctx);
		return ctx.mkConcat(seqFirstString, seqSecondString);
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new Concat(arguments);
	}

	@Override
	public int getId() {
		return AbstractExpressionsGenerator.CONCAT;
	}

	@Override
	public RewritingRule getRewritingRule() {
		// primitive operation, no rewriting rule
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this,
				new HashMap<SMTElement, Boolean>());
		return rule;
	}

}
