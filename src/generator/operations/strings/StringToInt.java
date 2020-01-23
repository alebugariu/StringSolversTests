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

import org.apache.commons.lang3.StringUtils;

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
import generator.operations.connectors.Or;
import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;
import generator.strings.utils.SMTStringUtils;

public class StringToInt extends StringOperation {

	private SMTString string;

	public StringToInt(SMTConstructedObject string) {
		this(string, null);
	}

	public StringToInt(List<SMTConstructedObject> arguments) {
		super(arguments);
		string = (SMTString) arguments.get(0);
	}

	public StringToInt(SMTConstructedObject string, SMTConstructedObject result) {
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
		String value = string.getValue();
		if (StringUtils.isNumeric(value)) {
			int intValue = Integer.parseInt(value);
			return new SMTInt(intValue, this, true);
		}
		return new SMTInt(-1, this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);

		IntExpr stringToInt = ctx.stringToInt(seqString);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(stringToInt, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(stringToInt, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	@Override
	public IntExpr toSMT(Context ctx) {
		SeqExpr seqString = string.toSMT(ctx);
		return ctx.stringToInt(seqString);
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new StringToInt(arguments);
	}

	@Override
	public int getId() {
		return AbstractExpressionsGenerator.STRING_TO_INT;
	}

	// if s != "" && (forall j {at(s, j)}: j >= 0 && j < length(s) => at(s, j) ==
	// "0" || ... && || (s, j) == "9") then intToString(result) == s otherwise
	// result = -1

	@Override
	public RewritingRule getRewritingRule() {
		SMTString string = (SMTString) this.string.copy();
		string.relevantForUnsatCore(true);
		SMTConstructedObject stringToIntResult = getResult().copy();
		stringToIntResult.relevantForUnsatCore(true);

		SMTInt minusOne = new SMTInt(-1, null, isConstant);
		SMTInt zero = new SMTInt(0, null, isConstant);

		SMTString zeroString = new SMTString("0", null, isConstant);
		SMTString oneString = new SMTString("1", null, isConstant);
		SMTString twoString = new SMTString("2", null, isConstant);
		SMTString threeString = new SMTString("3", null, isConstant);
		SMTString fourString = new SMTString("4", null, isConstant);
		SMTString fiveString = new SMTString("5", null, isConstant);
		SMTString sixString = new SMTString("6", null, isConstant);
		SMTString sevenString = new SMTString("7", null, isConstant);
		SMTString eightString = new SMTString("8", null, isConstant);
		SMTString nineString = new SMTString("9", null, isConstant);

		StringOperation lengthS = new Length(string);

		SMTBool falseResult = new SMTBool(false, null, isConstant);
		SMTBool trueResult = new SMTBool(true, null, isConstant);

		SMTElement minusOneResult = new Equals(stringToIntResult, minusOne, trueResult);

		SMTInt j = new SMTInt("j", AbstractExpressionsGenerator.unconstrained, null, !isConstant);
		SMTElement validIndexJ = new And(new GreaterEquals(j, zero), new LessThan(j, lengthS));

		StringOperation atIndexJ = new At(string, j);
		SMTConstructedObject atIndexJResult = atIndexJ.getResult();

		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(j);

		StringOperation intToString = new IntToString(stringToIntResult, string);
		SMTString emptyString = new SMTString("empty", "", null, isConstant);

		SMTElement onlyDigits = new Forall(quantifiedVariables, new Implies(validIndexJ, new Or(
				new Equals(atIndexJResult, zeroString, trueResult),
				new Or(new Equals(atIndexJResult, oneString, trueResult), new Or(
						new Equals(atIndexJResult, twoString, trueResult),
						new Or(new Equals(atIndexJResult, threeString, trueResult), new Or(
								new Equals(atIndexJResult, fourString, trueResult),
								new Or(new Equals(atIndexJResult, fiveString, trueResult), new Or(
										new Equals(atIndexJResult, sixString, trueResult),
										new Or(new Equals(atIndexJResult, sevenString, trueResult),
												new Or(new Equals(atIndexJResult, eightString, trueResult),
														new Equals(atIndexJResult, nineString, trueResult))))))))))),
				atIndexJ);
		SMTElement equivalentFormula = new IfThenElse(new And(new Equals(string, emptyString, falseResult), onlyDigits),
				intToString, minusOneResult);
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;
	}

}
