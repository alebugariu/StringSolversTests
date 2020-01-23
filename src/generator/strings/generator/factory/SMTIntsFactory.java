/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings.generator.factory;

import java.util.ArrayList;
import java.util.List;

import generator.operations.Operation;
import generator.operations.connectors.And;
import generator.operations.connectors.GreaterEquals;
import generator.operations.connectors.GreaterThan;
import generator.operations.connectors.Implies;
import generator.operations.connectors.LessThan;
import generator.operations.connectors.LessThanEquals;
import generator.operations.connectors.Or;
import generator.operations.connectors.SMTElement;
import generator.operations.strings.At;
import generator.operations.strings.Contains;
import generator.operations.strings.Equals;
import generator.operations.strings.IndexOf;
import generator.operations.strings.Length;
import generator.operations.strings.StringOperation;
import generator.operations.strings.StringToInt;
import generator.strings.TrivialEquality;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;

public class SMTIntsFactory {

	public static List<StringOperation> generateIndexOfOperations(List<SMTString> strings, List<SMTInt> ints) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString string : strings) {
			for (SMTString substring : strings) {
				for (SMTInt offset : ints) {
					StringOperation operation = new IndexOf(string.copyWithoutName(), substring.copyWithoutName(),
							offset.copyWithoutName());
					operation.assignNamesToArguments();
					operations.add(operation);
				}
			}
		}
		return operations;
	}

	public static List<StringOperation> generateIndexOfOperationsWithDistinctHistory(List<SMTString> strings,
			List<SMTInt> ints) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString string : strings) {
			for (SMTString substring : strings) {
				for (SMTInt offset : ints) {
					List<Integer> historyForArguments = string.getConstructionHistory();
					historyForArguments.addAll(substring.getConstructionHistory());
					historyForArguments.addAll(offset.getConstructionHistory());
					if (!seenHistoriesForArguments.contains(historyForArguments)) {
						StringOperation operation = new IndexOf(string.copyWithoutName(), substring.copyWithoutName(),
								offset.copyWithoutName());
						operations.add(operation);
						seenHistoriesForArguments.add(historyForArguments);
					}
				}
			}
		}
		return operations;
	}

	public static List<StringOperation> generateLengthOperations(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString string : strings) {
			StringOperation operation = new Length(string.copyWithoutName());
			operation.assignNamesToArguments();
			operations.add(operation);
		}
		return operations;
	}

	public static List<StringOperation> generateLengthOperationsWithDistinctHistory(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString string : strings) {
			List<Integer> historyForArguments = string.getConstructionHistory();
			if (!seenHistoriesForArguments.contains(historyForArguments)) {
				StringOperation operation = new Length(string.copyWithoutName());
				operations.add(operation);
				seenHistoriesForArguments.add(historyForArguments);
			}
		}
		return operations;
	}

	public static List<StringOperation> generateStringToIntOperations(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString string : strings) {
			StringOperation operation = new StringToInt(string.copyWithoutName());
			operation.assignNamesToArguments();
			operations.add(operation);
		}
		return operations;
	}

	public static List<StringOperation> generateStringToIntOperationsWithDistinctHistory(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString string : strings) {
			List<Integer> historyForArguments = string.getConstructionHistory();
			if (!seenHistoriesForArguments.contains(historyForArguments)) {
				StringOperation operation = new StringToInt(string.copyWithoutName());
				operations.add(operation);
				seenHistoriesForArguments.add(historyForArguments);
			}
		}
		return operations;
	}

	// special cases
	// indexOf(s, "", offset) == offset if offset >= 0 && offset <= length(s) <=>
	// offset == r: r == indexOf(s, "", offset) if offset >= 0 && offset <=
	// length(s)
	public static List<TrivialEquality> generateTrivialEqualitiesForAbstractElement(SMTInt integer, SMTInt result,
			boolean quantifiedVariable) {
		List<TrivialEquality> trivialEqualities = new ArrayList<TrivialEquality>();
		SMTString emptyString = new SMTString("empty", "", null, Operation.isConstant);
		SMTInt zero = new SMTInt(0, null, Operation.isConstant);

		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);

		StringOperation lengthS = new Length(s);
		SMTElement inBoundsOffset = new And(new GreaterEquals(integer, zero), new LessThanEquals(integer, lengthS));

		if (!quantifiedVariable) {
			trivialEqualities
					.add(new TrivialEquality(new And(new IndexOf(s, emptyString, integer, result), inBoundsOffset)));
			return trivialEqualities;
		}

		SMTElement equality = new Implies(inBoundsOffset, new IndexOf(s, emptyString, integer, result));
		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(integer);
		quantifiedVariables.add(s);
		Operation additionalTrigger = new IndexOf(s, emptyString, integer);
		trivialEqualities.add(new TrivialEquality(equality, quantifiedVariables, additionalTrigger));
		return trivialEqualities;
	}

	// special cases
	// eqC0: indexOf(s, t, offset) == -1 if offset < 0 || offset > length(s)

	// eqC1: indexOf(s, t, offset) == -1 if contains(s,t) == false

	// eqC2: stringToInt(s) == -1 if s == ""

	// eqC3: stringToInt(s) == -1 if i >= 0 && i < length(s) && at(s, i) != "0" && …
	// && at(s, i) != "9"

	// eqC4: length(s) == 0 if s == ""

	// eqC5: stringToInt(s) == 0 if s == "0"

	// eqC6: stringToInt(s) == 1 if s == "1"

	// ...

	// stringToInt(s) == 10 if s == "10"

	public static List<TrivialEquality> generateTrivialEqualitiesForConstantElement(SMTInt constantInt) {
		int value = constantInt.getIntValue();
		switch (value) {
		case -1: {
			List<TrivialEquality> trivialEqualitiesMinusOne = new ArrayList<TrivialEquality>();

			trivialEqualitiesMinusOne.add(eqC0(constantInt));
			trivialEqualitiesMinusOne.add(eqC1(constantInt));
			trivialEqualitiesMinusOne.add(eqC2(constantInt));
			trivialEqualitiesMinusOne.add(eqC3(constantInt));
			return trivialEqualitiesMinusOne;
		}
		case 0: {
			List<TrivialEquality> trivialEqualitiesZero = new ArrayList<TrivialEquality>();
			trivialEqualitiesZero.add(eqC4(constantInt));
			trivialEqualitiesZero.add(eqC5(constantInt));
			return trivialEqualitiesZero;
		}
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10: {
			List<TrivialEquality> trivialEqualitiesOneTen = new ArrayList<TrivialEquality>();
			trivialEqualitiesOneTen.add(eqC6(constantInt));
			return trivialEqualitiesOneTen;
		}
		}
		return new ArrayList<TrivialEquality>();
	}

	private static TrivialEquality eqC0(SMTInt constantInt) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt offset = new SMTInt(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		StringOperation lengthS = new Length(s);
		SMTInt zero = new SMTInt(0, null, Operation.isConstant);
		SMTElement outOfBoundsOffset = new Or(new LessThan(offset, zero), new GreaterThan(offset, lengthS));

		return new TrivialEquality(new And(new IndexOf(s, t, offset, constantInt), outOfBoundsOffset));
	}

	private static TrivialEquality eqC1(SMTInt constantInt) {
		SMTBool falseResult = new SMTBool(false, null, Operation.isConstant);
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt offset = new SMTInt(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		StringOperation notContainsST = new Contains(s, t, falseResult);

		return new TrivialEquality(new And(new IndexOf(s, t, offset, constantInt), notContainsST));
	}

	private static TrivialEquality eqC2(SMTInt constantInt) {
		SMTBool trueResult = new SMTBool(true, null, Operation.isConstant);
		SMTString emptyString = new SMTString("empty", "", null, Operation.isConstant);
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);

		return new TrivialEquality(new And(new StringToInt(s, constantInt), new Equals(s, emptyString, trueResult)));
	}

	private static TrivialEquality eqC3(SMTInt constantInt) {
		SMTBool falseResult = new SMTBool(false, null, Operation.isConstant);
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt i = new SMTInt(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt zero = new SMTInt(0, null, Operation.isConstant);
		StringOperation lengthS = new Length(s);
		SMTElement validIndexI = new And(new GreaterEquals(i, zero), new LessThan(i, lengthS));

		StringOperation atIndexI = new At(s, i);
		SMTConstructedObject atIndexIResult = atIndexI.getResult();
		SMTString zeroString = new SMTString("0", null, Operation.isConstant);
		SMTString oneString = new SMTString("1", null, Operation.isConstant);
		SMTString twoString = new SMTString("2", null, Operation.isConstant);
		SMTString threeString = new SMTString("3", null, Operation.isConstant);
		SMTString fourString = new SMTString("4", null, Operation.isConstant);
		SMTString fiveString = new SMTString("5", null, Operation.isConstant);
		SMTString sixString = new SMTString("6", null, Operation.isConstant);
		SMTString sevenString = new SMTString("7", null, Operation.isConstant);
		SMTString eightString = new SMTString("8", null, Operation.isConstant);
		SMTString nineString = new SMTString("9", null, Operation.isConstant);

		return new TrivialEquality(new And(new StringToInt(s, constantInt), new And(validIndexI, new And(
				new Equals(atIndexIResult, zeroString, falseResult),
				new And(new Equals(atIndexIResult, oneString, falseResult), new And(
						new Equals(atIndexIResult, twoString, falseResult),
						new And(new Equals(atIndexIResult, threeString, falseResult), new And(
								new Equals(atIndexIResult, fourString, falseResult),
								new And(new Equals(atIndexIResult, fiveString, falseResult),
										new And(new Equals(atIndexIResult, sixString, falseResult),
												new And(new Equals(atIndexIResult, sevenString, falseResult), new And(
														new Equals(atIndexIResult, eightString, falseResult),
														new Equals(atIndexIResult, nineString, falseResult)))))))))))));
	}

	private static TrivialEquality eqC4(SMTInt constantInt) {
		SMTBool trueResult = new SMTBool(true, null, Operation.isConstant);
		SMTString emptyString = new SMTString("empty", "", null, Operation.isConstant);
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);

		return new TrivialEquality(new And(new Length(s, constantInt), new Equals(s, emptyString, trueResult)));
	}

	private static TrivialEquality eqC5(SMTInt constantInt) {
		SMTString zeroString = new SMTString("0", null, Operation.isConstant);

		return new TrivialEquality(new StringToInt(zeroString, constantInt));
	}

	private static TrivialEquality eqC6(SMTInt constantInt) {
		SMTString s = new SMTString(String.valueOf(constantInt.getIntValue()), null, Operation.isConstant);

		return new TrivialEquality(new StringToInt(s, constantInt));
	}
}
