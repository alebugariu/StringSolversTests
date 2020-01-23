/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.strings;

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

public class At extends StringOperation {

	private SMTString string;
	private SMTInt offset;

	public At(SMTConstructedObject string, SMTConstructedObject offset) {
		this(string, offset, null);
	}

	public At(List<SMTConstructedObject> arguments) {
		super(arguments);
		string = (SMTString) arguments.get(0);
		offset = (SMTInt) arguments.get(1);
	}

	public At(SMTConstructedObject string, SMTConstructedObject offset, SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(string, offset));
		this.string = (SMTString) string;
		this.offset = (SMTInt) offset;
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
		Map<Integer, String> asMap = SMTStringUtils.toMap(string.getValue());
		String result = asMap.get(offset.getIntValue());
		if (result == null) {
			result = "";
		}
		return new SMTString(result, this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		IntExpr intOffset = offset.toSMT(ctx);

		SeqExpr seqAt = ctx.mkAt(seqString, intOffset);

		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(seqAt, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(seqAt, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	@Override
	public SeqExpr toSMT(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		IntExpr intOffset = offset.toSMT(ctx);
		return ctx.mkAt(seqString, intOffset);
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new At(arguments);
	}

	@Override
	public int getId() {
		return AbstractExpressionsGenerator.AT;
	}

	@Override
	// at(s, offset) == result <=> result == substr(s, offset, 1)
	public RewritingRule getRewritingRule() {
		SMTConstructedObject atResult = getResult().copy();
		atResult.relevantForUnsatCore(true);
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTInt offset = (SMTInt) this.offset.copy();
		offset.relevantForUnsatCore(true);

		SMTInt one = new SMTInt(1, null, isConstant);

		SMTElement equivalentFormula = new Substr(string, offset, one, atResult);
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;
	}
}
