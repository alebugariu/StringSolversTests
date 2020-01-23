/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.strings;

import java.util.ArrayList;
import java.util.List;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.IntExpr;
import com.microsoft.z3.SeqExpr;

import generator.operations.Operation;
import generator.operations.connectors.And;
import generator.operations.connectors.Forall;
import generator.operations.connectors.GreaterEquals;
import generator.operations.connectors.IfThenElse;
import generator.operations.connectors.Implies;
import generator.operations.connectors.LessThan;
import generator.operations.connectors.LessThanEquals;
import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;
import generator.strings.utils.SMTStringUtils;

public class IndexOf extends StringOperation {

	private SMTString string;
	private SMTString substring;
	private SMTInt offset;

	public IndexOf(SMTConstructedObject string, SMTConstructedObject substring, SMTConstructedObject offset) {
		this(string, substring, offset, null);
	}

	public IndexOf(List<SMTConstructedObject> arguments) {
		super(arguments);
		string = (SMTString) arguments.get(0);
		substring = (SMTString) arguments.get(1);
		offset = (SMTInt) arguments.get(2);
	}

	public IndexOf(SMTConstructedObject string, SMTConstructedObject substring, SMTConstructedObject offset,
			SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(string, substring, offset));
		this.string = (SMTString) string;
		this.substring = (SMTString) substring;
		this.offset = (SMTInt) offset;
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
		String stringValue = string.getValue();
		String substringValue = substring.getValue();
		int offsetValue = offset.getIntValue();

		String stringWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(stringValue);
		String substringWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(substringValue);

		int stringLength = stringWithoutSpecialCharacters.length();

		if (substringValue.isEmpty() && offsetValue >= 0 && offsetValue <= stringLength) {
			return new SMTInt(offsetValue, this, true);
		}
		if (offsetValue < 0 || offsetValue > stringLength) {
			return new SMTInt(-1, this, true);
		}

		int result = stringWithoutSpecialCharacters.indexOf(substringWithoutSpecialCharacters, offsetValue);
		return new SMTInt(result, this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		SeqExpr seqSubstring = substring.toSMT(ctx);
		IntExpr intOffset = offset.toSMT(ctx);

		IntExpr indexOf = ctx.mkIndexOf(seqString, seqSubstring, intOffset);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(indexOf, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(indexOf, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	@Override
	public IntExpr toSMT(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		SeqExpr seqSubstring = substring.toSMT(ctx);
		IntExpr intOffset = offset.toSMT(ctx);
		return ctx.mkIndexOf(seqString, seqSubstring, intOffset);
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new IndexOf(arguments);
	}

	@Override
	public int getId() {
		return AbstractExpressionsGenerator.INDEX_OF;
	}

	@Override
	// indexOf(s, t, offset) == result <=>
	// (t == "") && (offset >= 0 && offset <= length(s)) => (result == offset) &&

	// (if t != "" && offset >= 0 && offset <= length(s) then exists s1, s2, s4:
	// (s == s1 ++ s2 ++ t ++ s4) && offset == length(s1) && (forall i {substr(t, 0,
	// i)}: i >= 0 && i < length(t) => contains(s2 ++ substr(t, 0, i), t) == false))
	// && result == length(s1 ++ s2))

	// otherwise result == -1
	public RewritingRule getRewritingRule() {
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTString substring = (SMTString) this.substring.copy();
		substring.relevantForUnsatCore(true);
		SMTInt offset = (SMTInt) this.offset.copy();
		offset.relevantForUnsatCore(true);
		SMTConstructedObject indexOfResult = getResult().copy();
		indexOfResult.relevantForUnsatCore(true);

		SMTString s1 = new SMTString("s1", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString s2 = new SMTString("s2", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString s4 = new SMTString("s4", AbstractExpressionsGenerator.unconstrained, null, !isConstant);

		SMTInt zero = new SMTInt(0, null, isConstant);
		SMTInt minusOne = new SMTInt(-1, null, isConstant);
		StringOperation lengthS = new Length(string);
		SMTBool trueResult = new SMTBool(true, null, isConstant);

		SMTElement inBoundsOffset = new And(new GreaterEquals(offset, zero), new LessThanEquals(offset, lengthS));

		// condition 1
		SMTString emptyString = new SMTString("empty", "", null, isConstant);
		StringOperation comparisonWithEmptyString = new Equals(substring, emptyString, trueResult);
		SMTElement condition1 = new And(comparisonWithEmptyString, inBoundsOffset);
		SMTElement resultForEmptySubstring = new Implies(condition1, new Equals(indexOfResult, offset, trueResult));

		// condition 2
		SMTBool falseResult = new SMTBool(false, null, isConstant);
		StringOperation s1s2 = new Concat(s1, s2, null);
		StringOperation s1s2ts4 = new Concat(s1s2.getResult(), new Concat(substring, s4).getResult(), string);
		StringOperation nonEmptySubstring = new Equals(substring, emptyString, falseResult);
		StringOperation lengthS1 = new Length(s1, offset);

		SMTInt i = new SMTInt("i", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		List<SMTConstructedObject> quantifiedVariables1 = new ArrayList<SMTConstructedObject>();
		quantifiedVariables1.add(i);

		SMTElement validI = new And(new GreaterEquals(i, zero), new LessThan(i, new Length(substring)));
		StringOperation substr = new Substr(substring, zero, i);
		StringOperation notContainsS2SubstrT = new Contains(new Concat(s2, substr.getResult()).getResult(), substring,
				falseResult);
		SMTElement body1 = new Implies(validI, notContainsS2SubstrT);

		SMTElement condition2 = new And(nonEmptySubstring, inBoundsOffset);

		StringOperation resultEqualsLength = new Length(s1s2.getResult(), indexOfResult);
		SMTElement positiveResult = new And(
				new And(s1s2ts4, new And(lengthS1, new Forall(quantifiedVariables1, body1, substr))),
				resultEqualsLength);

		SMTElement equivalentFormula = new And(resultForEmptySubstring,
				new IfThenElse(condition2, positiveResult, new Equals(indexOfResult, minusOne, trueResult)));
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;

	}
}
