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

public class SuffixOf extends StringOperation {

	private SMTString suffix;
	private SMTString string;

	public SuffixOf(SMTConstructedObject suffix, SMTConstructedObject string) {
		this(suffix, string, null);
	}

	public SuffixOf(List<SMTConstructedObject> arguments) {
		super(arguments);
		suffix = (SMTString) arguments.get(0);
		string = (SMTString) arguments.get(1);
	}

	public SuffixOf(SMTConstructedObject suffix, SMTConstructedObject string, SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(suffix, string));
		this.suffix = (SMTString) suffix;
		this.string = (SMTString) string;
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
		String suffixValue = suffix.getValue();
		boolean result = SMTStringUtils.endsWithMap(stringValue, suffixValue);
		return new SMTBool(result, this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		SeqExpr seqSuffix = suffix.toSMT(ctx);

		BoolExpr suffixOf = ctx.mkSuffixOf(seqSuffix, seqString);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(suffixOf, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(suffixOf, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new SuffixOf(arguments);
	}

	@Override
	public Expr toSMT(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		SeqExpr seqSuffix = suffix.toSMT(ctx);
		return ctx.mkContains(seqString, seqSuffix);
	}

	@Override
	public int getId() {
		SMTBool result = (SMTBool) getResult();
		String value = result.getValue();
		if (value.equals(AbstractExpressionsGenerator.unconstrained) || value.equals("true")) {
			return AbstractExpressionsGenerator.SUFFIX_OF;
		}
		return AbstractExpressionsGenerator.NOT_SUFFIX_OF;
	}

	@Override
	public RewritingRule getRewritingRule() {
		int id = getId();
		if (id == AbstractExpressionsGenerator.SUFFIX_OF) {
			return rewritingRule_TrueCase();
		}
		return rewritingRule_FalseCase();
	}

	// s is the suffix
	// suffixOf(s, t) == true <=> t == t1 ++ s
	private RewritingRule rewritingRule_TrueCase() {
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTString suffix = (SMTString) this.suffix.copy();
		suffix.relevantForUnsatCore(true);
		SMTString t1 = new SMTString("t1", AbstractExpressionsGenerator.unconstrained, null, !isConstant);

		SMTElement equivalentFormula = new Concat(t1, suffix, string);
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;
	}

	// s is the suffix
	// suffixOf(s, t) == false <=> forall t1, t2 {t1 ++ t2}: (t == t1 ++ t2) => (t2
	// != s)
	private RewritingRule rewritingRule_FalseCase() {
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTString suffix = (SMTString) this.suffix.copy();
		suffix.relevantForUnsatCore(true);
		SMTString t1 = new SMTString("t1", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString t2 = new SMTString("t2", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		StringOperation t1t2 = new Concat(t1, t2, string);

		SMTBool falseResult = new SMTBool(false, null, isConstant);
		StringOperation t2EqualsS = new Equals(t2, suffix, falseResult);

		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(t1);
		quantifiedVariables.add(t2);

		StringOperation trigger = new Concat(t1, t2);
		SMTElement equivalentFormula = new Forall(quantifiedVariables, new Implies(t1t2, t2EqualsS), trigger);
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;
	}

}
