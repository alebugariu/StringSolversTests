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
import com.microsoft.z3.Expr;
import com.microsoft.z3.SeqExpr;

import generator.operations.Operation;
import generator.operations.connectors.Forall;
import generator.operations.connectors.Implies;
import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTString;
import generator.strings.utils.SMTStringUtils;

public class Contains extends StringOperation {

	private SMTString string;
	private SMTString substring;

	public Contains(SMTConstructedObject string, SMTConstructedObject substring) {
		this(string, substring, null);
	}

	public Contains(List<SMTConstructedObject> arguments) {
		super(arguments);
		string = (SMTString) arguments.get(0);
		substring = (SMTString) arguments.get(1);
	}

	public Contains(SMTConstructedObject string, SMTConstructedObject substring, SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(string, substring));
		this.string = (SMTString) string;
		this.substring = (SMTString) substring;
		if (result == null) {
			result = apply();
		}
		this.setResult((SMTBool) result);
	}

	@Override
	public SMTConstructedObject apply() {
		refresh();
		if (atLeastOneUnconstrainedArgument()) {
			return new SMTBool(AbstractExpressionsGenerator.unconstrained, this, !isConstant);
		}
		String stringValue = string.getValue();
		String substringValue = substring.getValue();
		String stringWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(stringValue);
		String substringWithoutSpecialCharacters = SMTStringUtils.withoutSpecialCharacters(substringValue);
		return new SMTBool(stringWithoutSpecialCharacters.contains(substringWithoutSpecialCharacters), this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		SeqExpr seqSubstring = substring.toSMT(ctx);

		BoolExpr contains = ctx.mkContains(seqString, seqSubstring);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(contains, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(contains, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new Contains(arguments);
	}

	@Override
	public Expr toSMT(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		SeqExpr seqSubstring = substring.toSMT(ctx);
		return ctx.mkContains(seqString, seqSubstring);
	}

	@Override
	public int getId() {
		SMTBool result = (SMTBool) getResult();
		String value = result.getValue();
		if (value.equals(AbstractExpressionsGenerator.unconstrained) || value.equals("true")) {
			return AbstractExpressionsGenerator.CONTAINS;
		}
		return AbstractExpressionsGenerator.NOT_CONTAINS;
	}

	@Override
	public RewritingRule getRewritingRule() {
		int id = getId();
		if (id == AbstractExpressionsGenerator.CONTAINS) {
			return rewritingRule_TrueCase();
		}
		return rewritingRule_FalseCase();
	}

	// contains(s, t) == true <=> s == s1 ++ t ++ s3
	private RewritingRule rewritingRule_TrueCase() {
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTString substring = (SMTString) this.substring.copy();
		substring.relevantForUnsatCore(true);

		SMTString s1 = new SMTString("s1", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString s3 = new SMTString("s3", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		StringOperation s1t = new Concat(s1, substring, null);
		SMTConstructedObject s1tResult = s1t.getResult();

		SMTElement equivalentFormula = new Concat(s1tResult, s3, string);
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;
	}

	// contains(s, t) == false <=> forall s1, s2, s3 {s1 ++ s2 ++ s3}: (s == s1 ++
	// s2 ++ s3) ==> (s2 != t)
	private RewritingRule rewritingRule_FalseCase() {
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTString substring = (SMTString) this.substring.copy();
		substring.relevantForUnsatCore(true);

		SMTString s1 = new SMTString("s1", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString s2 = new SMTString("s2", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString s3 = new SMTString("s3", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		StringOperation s1s2 = new Concat(s1, s2, null);
		SMTConstructedObject s1s2Result = s1s2.getResult();

		StringOperation s1s2s3 = new Concat(s1s2Result, s3, string);

		SMTBool falseResult = new SMTBool(false, null, isConstant);
		StringOperation s2EqualsT = new Equals(s2, substring, falseResult);

		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(s1);
		quantifiedVariables.add(s2);
		quantifiedVariables.add(s3);

		StringOperation trigger = new Concat(s1s2Result, s3);
		SMTElement equivalentFormula = new Forall(quantifiedVariables, new Implies(s1s2s3, s2EqualsT), trigger);
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;
	}

}
