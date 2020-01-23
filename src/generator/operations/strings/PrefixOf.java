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

public class PrefixOf extends StringOperation {

	private SMTString prefix;
	private SMTString string;

	public PrefixOf(SMTConstructedObject prefix, SMTConstructedObject string) {
		this(prefix, string, null);
	}

	public PrefixOf(List<SMTConstructedObject> arguments) {
		super(arguments);
		prefix = (SMTString) arguments.get(0);
		string = (SMTString) arguments.get(1);
	}

	public PrefixOf(SMTConstructedObject prefix, SMTConstructedObject string, SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(prefix, string));
		this.prefix = (SMTString) prefix;
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
		String prefixValue = prefix.getValue();
		boolean result = SMTStringUtils.startsWithMap(stringValue, prefixValue);
		return new SMTBool(result, this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		SeqExpr seqPrefix = prefix.toSMT(ctx);

		BoolExpr prefixOf = ctx.mkPrefixOf(seqPrefix, seqString);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(prefixOf, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(prefixOf, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new PrefixOf(arguments);
	}

	@Override
	public Expr toSMT(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		SeqExpr seqPrefix = prefix.toSMT(ctx);
		return ctx.mkContains(seqString, seqPrefix);
	}

	@Override
	public int getId() {
		SMTBool result = (SMTBool) getResult();
		String value = result.getValue();
		if (value.equals(AbstractExpressionsGenerator.unconstrained) || value.equals("true")) {
			return AbstractExpressionsGenerator.PREFIX_OF;
		}
		return AbstractExpressionsGenerator.NOT_PREFIX_OF;
	}

	@Override
	public RewritingRule getRewritingRule() {
		int id = getId();
		if (id == AbstractExpressionsGenerator.PREFIX_OF) {
			return rewritingRule_TrueCase();
		}
		return rewritingRule_FalseCase();
	}

	// s is the prefix
	// prefixOf(s, t) == true <=> t == s ++ t2
	private RewritingRule rewritingRule_TrueCase() {
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTString prefix = (SMTString) this.prefix.copy();
		prefix.relevantForUnsatCore(true);

		SMTString t2 = new SMTString("t2", AbstractExpressionsGenerator.unconstrained, null, !isConstant);

		SMTElement equivalentFormula = new Concat(prefix, t2, string);
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;
	}

	// s is the prefix
	// prefixOf(s, t) == false <=> forall t1, t2 {t1 ++ t2}: (t == t1 ++ t2) => (t1
	// != s)
	private RewritingRule rewritingRule_FalseCase() {
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTString prefix = (SMTString) this.prefix.copy();
		prefix.relevantForUnsatCore(true);

		SMTString t1 = new SMTString("t1", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTString t2 = new SMTString("t2", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		StringOperation t1t2 = new Concat(t1, t2, string);

		SMTBool falseResult = new SMTBool(false, null, isConstant);
		StringOperation t1EqualsS = new Equals(t1, prefix, falseResult);

		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(t1);
		quantifiedVariables.add(t2);

		StringOperation trigger = new Concat(t1, t2);
		SMTElement equivalentFormula = new Forall(quantifiedVariables, new Implies(t1t2, t1EqualsS), trigger);

		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;
	}

}
