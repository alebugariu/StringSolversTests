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
import java.util.Map;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.IntExpr;
import com.microsoft.z3.SeqExpr;

import generator.operations.Operation;
import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;
import generator.strings.utils.SMTStringUtils;

public class Length extends StringOperation {

	private SMTString string;

	public Length(SMTConstructedObject string) {
		this(string, null);
	}

	public Length(List<SMTConstructedObject> arguments) {
		super(arguments);
		string = (SMTString) arguments.get(0);
	}

	public Length(SMTConstructedObject string, SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(string));
		this.string = (SMTString) string;
		if (result == null) {
			result = apply();
		}
		this.setResult((SMTInt) result);
	}

	@Override
	public SMTConstructedObject apply() {
		refresh();
		if (atLeastOneUnconstrainedArgument()) {
			return new SMTInt(AbstractExpressionsGenerator.unconstrained, this);
		}
		Map<Integer, String> asMap = SMTStringUtils.toMap(string.getValue());
		return new SMTInt(asMap.size(), this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);

		IntExpr length = ctx.mkLength(seqString);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(length, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(length, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	public IntExpr toSMT(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		return ctx.mkLength(seqString);
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new Length(arguments);
	}

	@Override
	public int getId() {
		return AbstractExpressionsGenerator.LENGTH;
	}

	@Override
	public RewritingRule getRewritingRule() {
		// primitive operation, no rewriting rule
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this,
				new HashMap<SMTElement, Boolean>());
		return rule;
	}
}
