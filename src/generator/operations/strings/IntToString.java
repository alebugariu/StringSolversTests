/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.strings;

import java.util.List;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.IntExpr;
import com.microsoft.z3.SeqExpr;

import generator.operations.Div;
import generator.operations.Modulo;
import generator.operations.Operation;
import generator.operations.connectors.And;
import generator.operations.connectors.GreaterEquals;
import generator.operations.connectors.Implies;
import generator.operations.connectors.LessThan;
import generator.operations.connectors.SMTElement;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;
import generator.strings.utils.SMTStringUtils;

public class IntToString extends StringOperation {

	private SMTInt integer;

	public IntToString(SMTConstructedObject integer) {
		this(integer, null);
	}

	public IntToString(List<SMTConstructedObject> arguments) {
		super(arguments);
		integer = (SMTInt) arguments.get(0);
	}

	public IntToString(SMTConstructedObject integer, SMTConstructedObject result) {
		super(SMTStringUtils.convertArgumentsToList(integer));
		this.integer = (SMTInt) integer;
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
		if (integer.getIntValue() < 0) {
			return new SMTString("", this, true);
		}
		String value = integer.getValue();
		return new SMTString(value, this, true);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		IntExpr intExpr = integer.toSMT(ctx);

		SeqExpr intToString = ctx.intToString(intExpr);
		SMTConstructedObject result = getResult();
		Operation resultHistory = result.getHistory();
		if (resultHistory != null && resultHistory.equals(this)) {
			asSmtFormula = ctx.mkEq(intToString, result.toSMTwithoutHistory(ctx));
		} else {
			asSmtFormula = ctx.mkEq(intToString, result.toSMT(ctx));
		}
		return asSmtFormula;
	}

	@Override
	public SeqExpr toSMT(Context ctx) {
		IntExpr intValue = integer.toSMT(ctx);
		return ctx.intToString(intValue);
	}

	@Override
	public StringOperation copy(List<SMTConstructedObject> arguments) {
		return new IntToString(arguments);
	}

	@Override
	public int getId() {
		return AbstractExpressionsGenerator.INT_TO_STRING;
	}

	@Override
	// intToString(n) == result <=> (n < 0 => result == "") &&
	// (n == 0 => result == "0") && .. &&
	// (n == 9 => result == "9") &&
	// (n >= 10 => result == intToString(n / 10) ++ intToString(n % 10)
	public RewritingRule getRewritingRule() {
		SMTConstructedObject intToStringResult = getResult().copy();
		intToStringResult.relevantForUnsatCore(true);
		SMTInt integer = (SMTInt) this.integer.copy();
		integer.relevantForUnsatCore(true);

		SMTString emptyString = new SMTString("empty", "", null, isConstant);
		SMTInt zero = new SMTInt(0, null, isConstant);
		SMTInt one = new SMTInt(1, null, isConstant);
		SMTInt two = new SMTInt(2, null, isConstant);
		SMTInt three = new SMTInt(3, null, isConstant);
		SMTInt four = new SMTInt(4, null, isConstant);
		SMTInt five = new SMTInt(5, null, isConstant);
		SMTInt six = new SMTInt(6, null, isConstant);
		SMTInt seven = new SMTInt(7, null, isConstant);
		SMTInt eight = new SMTInt(8, null, isConstant);
		SMTInt nine = new SMTInt(9, null, isConstant);

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

		SMTBool trueResult = new SMTBool(true, null, isConstant);
		SMTElement negativeNumber = new Implies(new LessThan(integer, zero),
				new Equals(intToStringResult, emptyString, trueResult));

		SMTElement constantValues = new And(
				new Implies(new Equals(integer, zero, trueResult),
						new Equals(intToStringResult, zeroString, trueResult)),
				new And(new Implies(new Equals(integer, one, trueResult),
						new Equals(intToStringResult, oneString, trueResult)),
						new And(new Implies(new Equals(integer, two, trueResult),
								new Equals(intToStringResult, twoString, trueResult)),
								new And(new Implies(new Equals(integer, three, trueResult),
										new Equals(intToStringResult, threeString, trueResult)),
										new And(new Implies(new Equals(integer, four, trueResult),
												new Equals(intToStringResult, fourString, trueResult)),
												new And(new Implies(new Equals(integer, five, trueResult),
														new Equals(intToStringResult, fiveString, trueResult)),
														new And(new Implies(new Equals(integer, six, trueResult),
																new Equals(intToStringResult, sixString, trueResult)),
																new And(new Implies(
																		new Equals(integer, seven, trueResult),
																		new Equals(intToStringResult, sevenString,
																				trueResult)),
																		new And(new Implies(
																				new Equals(integer, eight, trueResult),
																				new Equals(intToStringResult,
																						eightString, trueResult)),
																				new Implies(
																						new Equals(integer, nine,
																								trueResult),
																						new Equals(intToStringResult,
																								nineString,
																								trueResult)))))))))));

		SMTInt ten = new SMTInt("10", null, isConstant);
		Operation div = new Div(integer, ten);

		Operation modulo = new Modulo(integer, ten);
		SMTElement greaterThanEleven = new Implies(new GreaterEquals(integer, ten),
				new Equals(intToStringResult, new Concat(new IntToString(div.getResult(), null).getResult(),
						new IntToString(modulo.getResult(), null).getResult()).getResult(), trueResult));

		SMTElement equivalentFormula = new And(negativeNumber, new And(constantValues, greaterThanEleven));
		RewritingRule rule = new RewritingRule(SMTStringUtils.getNameFromId(getId()), this, equivalentFormula);
		return rule;

	}

}
