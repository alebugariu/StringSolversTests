/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.strings;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.SeqExpr;

import generator.operations.Operation;
import generator.operations.connectors.And;
import generator.operations.connectors.GreaterEquals;
import generator.operations.connectors.IfThenElse;
import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;
import generator.strings.utils.SMTStringUtils;

public class Replace extends StringOperation {

	private SMTString string;
	private SMTString source;
	private SMTString destination;

	public Replace(SMTConstructedObject string, SMTConstructedObject source, SMTConstructedObject destination) {
		this(string, source, destination, null);
	}

	public Replace(List<SMTConstructedObject> arguments) {
		super(arguments);
		string = (SMTString) arguments.get(0);
		source = (SMTString) arguments.get(1);
		destination = (SMTString) arguments.get(2);
	}

	public Replace(SMTConstructedObject string, SMTConstructedObject source, SMTConstructedObject destination,
			SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(string, source, destination));
		this.string = (SMTString) string;
		this.source = (SMTString) source;
		this.destination = (SMTString) destination;
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
		String stringValue = string.getValue();
		String sourceValue = source.getValue();
		String destinationValue = destination.getValue();

		String stringWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(stringValue);
		String sourceWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(sourceValue);
		String destinationWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(destinationValue);

		if (sourceValue.isEmpty()) {
			return new SMTString(destinationWithoutSpecialCharacters.concat(stringWithoutSpecialCharacters), this,
					true);
		}

		if (stringWithoutSpecialCharacters.equals(sourceWithoutSpecialCharacters)) {
			return new SMTString(destinationWithoutSpecialCharacters, this, true);
		}

		String result = StringUtils.replaceOnce(stringWithoutSpecialCharacters, sourceWithoutSpecialCharacters,
				destinationWithoutSpecialCharacters);
		return new SMTString(result, this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		SeqExpr seqSourceString = source.toSMT(ctx);
		SeqExpr seqDestinationString = destination.toSMT(ctx);

		SeqExpr replace = ctx.mkReplace(seqString, seqSourceString, seqDestinationString);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(replace, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(replace, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	@Override
	public SeqExpr toSMT(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		SeqExpr seqSourceString = source.toSMT(ctx);
		SeqExpr seqDestinationString = destination.toSMT(ctx);
		return ctx.mkReplace(seqString, seqSourceString, seqDestinationString);
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new Replace(arguments);
	}

	@Override
	public int getId() {
		return AbstractExpressionsGenerator.REPLACE;
	}

	@Override
	// replace(s, t, u) == result <=> (i == indexOf(s, t, 0)) &&
	// (if i >= 0 then exists s1, s2, s3: s == s1 ++ s2 ++ s3 && length(s1) == i &&
	// s2 == t && result == s1 ++ u ++ s3)
	// (otherwise result == s)
	public RewritingRule getRewritingRule() {
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTString source = (SMTString) this.source.copy();
		source.relevantForUnsatCore(true);
		SMTString destination = (SMTString) this.destination.copy();
		destination.relevantForUnsatCore(true);
		SMTConstructedObject replaceResult = getResult().copy();
		replaceResult.relevantForUnsatCore(true);

		SMTString s1 = new SMTString("s1", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString s2 = new SMTString("s2", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString s3 = new SMTString("s3", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		StringOperation s1s2 = new Concat(s1, s2, null);
		SMTConstructedObject s1s2Result = s1s2.getResult();
		StringOperation s1s2s3 = new Concat(s1s2Result, s3, string);

		SMTInt zero = new SMTInt("0", null, isConstant);
		SMTInt indexOfResult = new SMTInt("index", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		StringOperation indexOf = new IndexOf(string, source, zero, indexOfResult);

		StringOperation s1u = new Concat(s1, destination, null);
		SMTConstructedObject s1uResult = s1u.getResult();
		StringOperation s1us3 = new Concat(s1uResult, s3, replaceResult);

		StringOperation length = new Length(s1, indexOfResult);
		SMTBool trueResult = new SMTBool(true, null, isConstant);
		SMTElement containsPattern = new And(new And(s1s2s3, new And(length, new Equals(s2, source, trueResult))),
				s1us3);

		SMTElement equivalentFormula = new And(indexOf, new IfThenElse(new GreaterEquals(indexOfResult, zero),
				containsPattern, new Equals(replaceResult, string, trueResult)));
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;
	}

}
