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
import generator.operations.connectors.Implies;
import generator.operations.connectors.LessThan;
import generator.operations.connectors.LessThanEquals;
import generator.operations.connectors.Or;
import generator.operations.connectors.SMTElement;
import generator.operations.strings.At;
import generator.operations.strings.Concat;
import generator.operations.strings.Contains;
import generator.operations.strings.Equals;
import generator.operations.strings.IndexOf;
import generator.operations.strings.IntToString;
import generator.operations.strings.Length;
import generator.operations.strings.Replace;
import generator.operations.strings.StringOperation;
import generator.operations.strings.Substr;
import generator.strings.TrivialEquality;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;

public class SMTStringsFactory {

	public static List<StringOperation> generateAtOperations(List<SMTString> strings, List<SMTInt> ints) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString string : strings) {
			for (SMTInt offset : ints) {
				StringOperation operation = new At(string.copyWithoutName(), offset.copyWithoutName());
				operation.assignNamesToArguments();
				operations.add(operation);
			}
		}
		return operations;
	}

	public static List<StringOperation> generateAtOperationsWithDistinctHistory(List<SMTString> strings,
			List<SMTInt> ints) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString string : strings) {
			for (SMTInt offset : ints) {
				List<Integer> historyForArguments = string.getConstructionHistory();
				historyForArguments.addAll(offset.getConstructionHistory());
				if (!seenHistoriesForArguments.contains(historyForArguments)) {
					StringOperation operation = new At(string.copyWithoutName(), offset.copyWithoutName());
					operations.add(operation);
					seenHistoriesForArguments.add(historyForArguments);
				}
			}
		}
		return operations;
	}

	public static List<StringOperation> generateIntToStringOperations(List<SMTInt> ints) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTInt integer : ints) {
			StringOperation operation = new IntToString(integer.copyWithoutName());
			operation.assignNamesToArguments();
			operations.add(operation);
		}
		return operations;
	}

	public static List<StringOperation> generateIntToStringOperationsWithDistinctHistory(List<SMTInt> ints) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTInt integer : ints) {
			List<Integer> historyForArguments = integer.getConstructionHistory();
			if (!seenHistoriesForArguments.contains(historyForArguments)) {
				StringOperation operation = new IntToString(integer.copyWithoutName());
				operations.add(operation);
				seenHistoriesForArguments.add(historyForArguments);
			}
		}
		return operations;
	}

	public static List<StringOperation> generateConcatOperations(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString first : strings) {
			for (SMTString second : strings) {
				StringOperation operation = new Concat(first.copyWithoutName(), second.copyWithoutName());
				operation.assignNamesToArguments();
				operations.add(operation);
			}
		}
		return operations;
	}

	public static List<StringOperation> generateConcatOperationsWithDistinctHistory(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString first : strings) {
			for (SMTString second : strings) {
				List<Integer> historyForArguments = first.getConstructionHistory();
				historyForArguments.addAll(second.getConstructionHistory());
				if (!seenHistoriesForArguments.contains(historyForArguments)) {
					StringOperation operation = new Concat(first.copyWithoutName(), second.copyWithoutName());
					operations.add(operation);
					seenHistoriesForArguments.add(historyForArguments);
				}
			}
		}
		return operations;
	}

	public static List<StringOperation> generateSubstrOperations(List<SMTString> strings, List<SMTInt> ints) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString string : strings) {
			for (SMTInt offset : ints) {
				for (SMTInt length : ints) {
					StringOperation operation = new Substr(string.copyWithoutName(), offset.copyWithoutName(),
							length.copyWithoutName());
					operation.assignNamesToArguments();
					operations.add(operation);
				}
			}
		}
		return operations;
	}

	public static List<StringOperation> generateSubstrOperationsWithDistinctHistory(List<SMTString> strings,
			List<SMTInt> ints) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString string : strings) {
			for (SMTInt offset : ints) {
				for (SMTInt length : ints) {
					List<Integer> historyForArguments = string.getConstructionHistory();
					historyForArguments.addAll(offset.getConstructionHistory());
					historyForArguments.addAll(length.getConstructionHistory());
					if (!seenHistoriesForArguments.contains(historyForArguments)) {
						StringOperation operation = new Substr(string.copyWithoutName(), offset.copyWithoutName(),
								length.copyWithoutName());
						operations.add(operation);
						seenHistoriesForArguments.add(historyForArguments);
					}
				}
			}
		}
		return operations;
	}

	public static List<StringOperation> generateReplaceOperations(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString string : strings) {
			for (SMTString source : strings) {
				for (SMTString destination : strings) {
					StringOperation operation = new Replace(string.copyWithoutName(), source.copyWithoutName(),
							destination.copyWithoutName());
					operation.assignNamesToArguments();
					operations.add(operation);
				}
			}
		}
		return operations;
	}

	public static List<StringOperation> generateReplaceOperationsWithDistinctHistory(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString string : strings) {
			for (SMTString source : strings) {
				for (SMTString destination : strings) {
					List<Integer> historyForArguments = string.getConstructionHistory();
					historyForArguments.addAll(source.getConstructionHistory());
					historyForArguments.addAll(destination.getConstructionHistory());
					if (!seenHistoriesForArguments.contains(historyForArguments)) {
						StringOperation operation = new Replace(string.copyWithoutName(), source.copyWithoutName(),
								destination.copyWithoutName());
						operations.add(operation);
						seenHistoriesForArguments.add(historyForArguments);
					}
				}
			}
		}
		return operations;
	}

	// special cases
	// eqA0: at(s, 0) == s if length(s) == 1 <=> s == r : r == at(s, 0) and
	// length(s) == 1

	// eqA1: concat(s, "") == s <=> s == r : r == concat(s, "")

	// eqA2: concat("", s) == s <=> s == r : r == concat("", s)

	// eqA3: replace(s, s, s) == s <=> s == r : r == replace(s, s, s)

	// eqA4: replace(s, t, u) == s if contains(s, t) == false <=> s == r : r ==
	// replace(s,
	// t, u) if contains(s, t) == false

	// eqA5: replace(s, t, u) == s if indexOf(s, t, 0) == -1 <=> s == r: r ==
	// replace(s,
	// t, u) if indexOf(s, t, 0) == -1

	// eqA6: substr(s, 0, length(s)) == s <=> s == r : r = substring(s, zero,
	// length(s)

	private static TrivialEquality eqA0(SMTString string, SMTString result, boolean quantifiedVariable) {
		SMTInt zero = new SMTInt(0, null, Operation.isConstant);
		SMTInt one = new SMTInt(1, null, Operation.isConstant);
		if (!quantifiedVariable) {
			return new TrivialEquality(new And(new At(string, zero, result), new Length(string, one)));
		}
		SMTElement equality = new Implies(new Length(string, one), new At(string, zero, result));
		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(string);
		Operation additionalTrigger = new At(string, zero);
		return new TrivialEquality(equality, quantifiedVariables, additionalTrigger);
	}

	private static TrivialEquality eqA1(SMTString string, SMTString result, boolean quantifiedVariable) {
		SMTString emptyString = new SMTString("empty", "", null, Operation.isConstant);
		if (!quantifiedVariable) {
			return new TrivialEquality(new Concat(string, emptyString, result));
		}
		SMTElement equality = new Concat(string, emptyString, result);
		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(string);
		Operation additionalTrigger = new Concat(string, emptyString);
		return new TrivialEquality(equality, quantifiedVariables, additionalTrigger);
	}

	private static TrivialEquality eqA2(SMTString string, SMTString result, boolean quantifiedVariable) {
		SMTString emptyString = new SMTString("empty", "", null, Operation.isConstant);
		if (!quantifiedVariable) {
			return new TrivialEquality(new Concat(emptyString, string, result));
		}
		SMTElement equality = new Concat(emptyString, string, result);
		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(string);
		Operation additionalTrigger = new Concat(emptyString, string);
		return new TrivialEquality(equality, quantifiedVariables, additionalTrigger);
	}

	private static TrivialEquality eqA3(SMTString string, SMTString result, boolean quantifiedVariable) {
		if (!quantifiedVariable) {
			return new TrivialEquality(new Replace(string, string, string, result));
		}
		SMTElement equality = new Replace(string, string, string, result);
		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(string);
		Operation additionalTrigger = new Replace(string, string, string);
		return new TrivialEquality(equality, quantifiedVariables, additionalTrigger);
	}

	private static TrivialEquality eqA4(SMTString string, SMTString result, boolean quantifiedVariable) {
		SMTBool falseResult = new SMTBool(false, null, Operation.isConstant);
		SMTString t = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString u = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		StringOperation notContainsST = new Contains(string, t, falseResult);
		if (!quantifiedVariable) {
			return new TrivialEquality(new And(new Replace(string, t, u, result), notContainsST));
		}
		SMTElement equality = new Implies(notContainsST, new Replace(string, t, u, result));
		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(string);
		quantifiedVariables.add(t);
		quantifiedVariables.add(u);
		Operation additionalTrigger = new Replace(string, t, u);
		return new TrivialEquality(equality, quantifiedVariables, additionalTrigger);
	}

	private static TrivialEquality eqA5(SMTString string, SMTString result, boolean quantifiedVariable) {
		SMTInt zero = new SMTInt(0, null, Operation.isConstant);
		SMTInt minusOne = new SMTInt(-1, null, Operation.isConstant);
		SMTString t = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString u = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		StringOperation indexOfMinusOne = new IndexOf(string, t, zero, minusOne);
		if (!quantifiedVariable) {
			return new TrivialEquality(new And(new Replace(string, t, u, result), indexOfMinusOne));
		}
		SMTElement equality = new Implies(indexOfMinusOne, new Replace(string, t, u, result));
		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(string);
		quantifiedVariables.add(t);
		quantifiedVariables.add(u);
		Operation additionalTrigger = new Replace(string, t, u);
		return new TrivialEquality(equality, quantifiedVariables, additionalTrigger);
	}

	private static TrivialEquality eqA6(SMTString string, SMTString result, boolean quantifiedVariable) {
		SMTInt zero = new SMTInt(0, null, Operation.isConstant);
		if (!quantifiedVariable) {
			return new TrivialEquality(new Substr(string, zero, new Length(string).getResult(), result));
		}
		SMTElement equality = new Substr(string, zero, new Length(string).getResult(), result);
		List<SMTConstructedObject> quantifiedVariables = new ArrayList<SMTConstructedObject>();
		quantifiedVariables.add(string);
		Operation additionalTrigger = new Substr(string, zero, new Length(string).getResult());
		return new TrivialEquality(equality, quantifiedVariables, additionalTrigger);
	}

	public static List<TrivialEquality> generateTrivialEqualitiesForAbstractElement(SMTString string, SMTString result,
			boolean quantifiedVariable) {

		List<TrivialEquality> trivialEqualities = new ArrayList<TrivialEquality>();

		trivialEqualities.add(eqA0(string, result, quantifiedVariable));
		trivialEqualities.add(eqA1(string, result, quantifiedVariable));
		trivialEqualities.add(eqA2(string, result, quantifiedVariable));
		trivialEqualities.add(eqA3(string, result, quantifiedVariable));
		trivialEqualities.add(eqA4(string, result, quantifiedVariable));
		trivialEqualities.add(eqA5(string, result, quantifiedVariable));
		trivialEqualities.add(eqA6(string, result, quantifiedVariable));

		return trivialEqualities;
	}

	// special cases
	// eqC0: at(s, offset) == "" if offset < 0 || offset >= length(s)

	// eqC1: concat("", "") == ""

	// eqC2: intToString(n) == "" if n < 0

	// eqC3: replace("", "", "") == ""

	// eqC4: substr(s, offset, length) == "" if offset < 0 || offset >= length(s) ||
	// length <= 0

	// eqC5: intToString(n) == "0" if n == 0
	// ...
	// intToString(n) == "9" if n == 9

	public static List<TrivialEquality> generateTrivialEqualitiesForConstantElement(SMTString constantString) {
		String value = constantString.getValue();
		if (value.isEmpty()) {

			List<TrivialEquality> trivialEqualitiesEmptyString = new ArrayList<TrivialEquality>();

			trivialEqualitiesEmptyString.add(eqC0(constantString));
			trivialEqualitiesEmptyString.add(eqC1(constantString));
			trivialEqualitiesEmptyString.add(eqC2(constantString));
			trivialEqualitiesEmptyString.add(eqC3(constantString));
			trivialEqualitiesEmptyString.add(eqC4(constantString));
			return trivialEqualitiesEmptyString;
		}
		if (value.equals("0") || value.equals("1") || value.equals("2") || value.equals("3") || value.equals("4")
				|| value.equals("5") || value.equals("6") || value.equals("7") || value.equals("8")
				|| value.equals("9")) {
			List<TrivialEquality> trivialEqualitiesDigit = new ArrayList<TrivialEquality>();

			trivialEqualitiesDigit.add(eqC5(constantString));
			return trivialEqualitiesDigit;
		}
		return new ArrayList<TrivialEquality>();
	}

	private static TrivialEquality eqC0(SMTString constantString) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt offset = new SMTInt(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);

		SMTInt zero = new SMTInt(0, null, Operation.isConstant);
		StringOperation lengthS = new Length(s);
		SMTElement outOfBoundsOffset = new Or(new LessThan(offset, zero), new GreaterEquals(offset, lengthS));

		return new TrivialEquality(new And(new At(s, offset, constantString), outOfBoundsOffset));
	}

	private static TrivialEquality eqC1(SMTString constantString) {
		SMTString emptyString = new SMTString("empty", "", null, Operation.isConstant);
		return new TrivialEquality(new Concat(emptyString, emptyString, constantString));
	}

	private static TrivialEquality eqC2(SMTString constantString) {
		SMTInt n = new SMTInt(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt zero = new SMTInt(0, null, Operation.isConstant);
		return new TrivialEquality(new And(new IntToString(n, constantString), new LessThan(n, zero)));
	}

	private static TrivialEquality eqC3(SMTString constantString) {
		SMTString emptyString = new SMTString("empty", "", null, Operation.isConstant);
		return new TrivialEquality(new Replace(emptyString, emptyString, emptyString, constantString));
	}

	private static TrivialEquality eqC4(SMTString constantString) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt offset = new SMTInt(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt length = new SMTInt(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);

		SMTInt zero = new SMTInt(0, null, Operation.isConstant);
		StringOperation lengthS = new Length(s);
		SMTElement outOfBoundsOffset = new Or(new LessThan(offset, zero), new GreaterEquals(offset, lengthS));

		return new TrivialEquality(new And(new Substr(s, offset, length, constantString),
				new Or(outOfBoundsOffset, new LessThanEquals(length, zero))));
	}

	private static TrivialEquality eqC5(SMTString constantString) {
		SMTInt n = new SMTInt(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt constant = new SMTInt(constantString.getValue(), null, Operation.isConstant);
		SMTBool trueResult = new SMTBool(true, null, Operation.isConstant);
		return new TrivialEquality(new And(new IntToString(n, constantString), new Equals(n, constant, trueResult)));
	}

}
