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
import generator.operations.connectors.And;
import generator.operations.connectors.GreaterEquals;
import generator.operations.connectors.GreaterThan;
import generator.operations.connectors.IfThenElse;
import generator.operations.connectors.LessThan;
import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;
import generator.strings.utils.SMTStringUtils;

public class Substr extends StringOperation {

	private SMTString string;
	private SMTInt offset;
	private SMTInt length;

	public Substr(SMTConstructedObject string, SMTConstructedObject offset, SMTConstructedObject length) {
		this(string, offset, length, null);
	}

	public Substr(List<SMTConstructedObject> arguments) {
		super(arguments);
		string = (SMTString) arguments.get(0);
		offset = (SMTInt) arguments.get(1);
		length = (SMTInt) arguments.get(2);
	}

	public Substr(SMTConstructedObject string, SMTConstructedObject offset, SMTConstructedObject length,
			SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(string, offset, length));
		this.string = (SMTString) string;
		this.offset = (SMTInt) offset;
		this.length = (SMTInt) length;
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
		String result = "";
		String value;
		int offsetValue = offset.getIntValue();
		if (offsetValue < 0 || offsetValue > asMap.size()) {
			return new SMTString("", this, true);
		}

		int lengthValue = length.getIntValue();
		if (lengthValue <= 0) {
			return new SMTString("", this, true);
		}
		int min = Math.min(offsetValue + lengthValue, asMap.size());
		for (int index = offsetValue; index < min; index++) {
			value = asMap.get(index);
			result += value;
		}
		return new SMTString(result, this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		IntExpr intOffset = offset.toSMT(ctx);
		IntExpr intLength = length.toSMT(ctx);

		SeqExpr seqSubstring = ctx.mkExtract(seqString, intOffset, intLength);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(seqSubstring, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(seqSubstring, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	@Override
	public SeqExpr toSMT(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		IntExpr intLength = length.toSMT(ctx);
		IntExpr intOffset = offset.toSMT(ctx);
		return ctx.mkExtract(seqString, intOffset, intLength);
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new Substr(arguments);
	}

	@Override
	public int getId() {
		return AbstractExpressionsGenerator.SUBSTR;
	}

	@Override
	// substr(s, offset, length) == result <=>
	// (if offset >= 0 && offset < length(s) && length > 0 then
	// exists s1, s2, s3: (s == s1 ++ s2 ++ s3) &&
	// (length(s1) == offset) && (length(s2) == length) && (s2 == result))
	// (otherwise result == "")
	public RewritingRule getRewritingRule() {
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTInt offset = (SMTInt) this.offset.copy();
		offset.relevantForUnsatCore(true);
		SMTInt length = (SMTInt) this.length.copy();
		length.relevantForUnsatCore(true);
		SMTConstructedObject substrResult = getResult().copy();
		substrResult.relevantForUnsatCore(true);

		SMTString s1 = new SMTString("s1", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString s2 = new SMTString("s2", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString s3 = new SMTString("s3", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		StringOperation s1s2 = new Concat(s1, s2, null);
		SMTConstructedObject s1s2Result = s1s2.getResult();
		StringOperation s1s2s3 = new Concat(s1s2Result, s3, string);

		SMTBool trueResult = new SMTBool(true, null, isConstant);
		SMTElement s2EqualsSubstrResult = new Equals(s2, substrResult, trueResult);
		StringOperation lengthS1 = new Length(s1, offset);
		StringOperation lengthS2 = new Length(s2, length);

		SMTInt zero = new SMTInt("0", null, isConstant);
		StringOperation stringLength = new Length(string);
		SMTElement inBounds = new And(new And(new GreaterEquals(offset, zero), new LessThan(offset, stringLength)),
				new GreaterThan(length, zero));
		SMTElement inBoundsResult = new And(s1s2s3, new And(new And(lengthS1, lengthS2), s2EqualsSubstrResult));

		SMTString emptyString = new SMTString("empty", "", null, isConstant);

		SMTElement equivalentFormula = new IfThenElse(inBounds, inBoundsResult,
				new Equals(substrResult, emptyString, trueResult));
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;
	}

}
