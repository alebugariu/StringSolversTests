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
import generator.operations.strings.Contains;
import generator.operations.strings.Equals;
import generator.operations.strings.IndexOf;
import generator.operations.strings.Length;
import generator.operations.strings.PrefixOf;
import generator.operations.strings.StringOperation;
import generator.operations.strings.SuffixOf;
import generator.strings.TrivialEquality;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;

public class SMTBoolsFactory {

	public static List<StringOperation> generateContainsOperations(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString string : strings) {
			for (SMTString substring : strings) {
				StringOperation operation = new Contains(string.copyWithoutName(), substring.copyWithoutName());
				operation.assignNamesToArguments();
				operations.add(operation);
			}
		}
		return operations;
	}

	public static List<StringOperation> generateContainsOperationsWithDistinctHistory(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString string : strings) {
			for (SMTString substring : strings) {
				List<Integer> historyForArguments = string.getConstructionHistory();
				historyForArguments.addAll(substring.getConstructionHistory());
				if (!seenHistoriesForArguments.contains(historyForArguments)) {
					StringOperation operation = new Contains(string.copyWithoutName(), substring.copyWithoutName());
					operations.add(operation);
					seenHistoriesForArguments.add(historyForArguments);
				}
			}
		}
		return operations;
	}

	public static List<StringOperation> generatePrefixOfOperations(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString prefix : strings) {
			for (SMTString string : strings) {
				StringOperation operation = new PrefixOf(prefix.copyWithoutName(), string.copyWithoutName());
				operation.assignNamesToArguments();
				operations.add(operation);
			}
		}
		return operations;
	}

	public static List<StringOperation> generatePrefixOfOperationsWithDistinctHistory(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString prefix : strings) {
			for (SMTString string : strings) {
				List<Integer> historyForArguments = prefix.getConstructionHistory();
				historyForArguments.addAll(string.getConstructionHistory());
				if (!seenHistoriesForArguments.contains(historyForArguments)) {
					StringOperation operation = new PrefixOf(prefix.copyWithoutName(), string.copyWithoutName());
					operations.add(operation);
					seenHistoriesForArguments.add(historyForArguments);
				}
			}
		}
		return operations;
	}

	public static List<StringOperation> generateSuffixOfOperations(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString suffix : strings) {
			for (SMTString string : strings) {
				StringOperation operation = new SuffixOf(suffix.copyWithoutName(), string.copyWithoutName());
				operation.assignNamesToArguments();
				operations.add(operation);
			}
		}
		return operations;
	}

	public static List<StringOperation> generateSuffixOfOperationsWithDistinctHistory(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString suffix : strings) {
			for (SMTString string : strings) {
				List<Integer> historyForArguments = suffix.getConstructionHistory();
				historyForArguments.addAll(string.getConstructionHistory());
				if (!seenHistoriesForArguments.contains(historyForArguments)) {
					StringOperation operation = new SuffixOf(suffix.copyWithoutName(), string.copyWithoutName());
					operations.add(operation);
					seenHistoriesForArguments.add(historyForArguments);
				}
			}
		}
		return operations;
	}

	public static List<StringOperation> generateEqualsOperations(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		for (SMTString first : strings) {
			for (SMTString second : strings) {
				StringOperation operation = new Equals(first.copyWithoutName(), second.copyWithoutName());
				operation.assignNamesToArguments();
				operations.add(operation);
			}
		}
		return operations;
	}

	public static List<StringOperation> generateEqualsOperationsWithDistinctHistory(List<SMTString> strings) {
		List<StringOperation> operations = new ArrayList<StringOperation>();
		List<List<Integer>> seenHistoriesForArguments = new ArrayList<List<Integer>>();
		for (SMTString first : strings) {
			for (SMTString second : strings) {
				List<Integer> historyForArguments = first.getConstructionHistory();
				historyForArguments.addAll(second.getConstructionHistory());
				if (!seenHistoriesForArguments.contains(historyForArguments)) {
					StringOperation operation = new Equals(first.copyWithoutName(), second.copyWithoutName());
					operations.add(operation);
					seenHistoriesForArguments.add(historyForArguments);
				}
			}
		}
		return operations;
	}

	// special cases
	// eqC0: contains(s, s) == true

	// eqC1: equals(s, s) == true

	// eqC2: prefixOf(“”, s) == true

	// eqC3: prefixOf(s, s) == true

	// eqC4: suffixOf(s, s) == true

	// eqC5: contains(s, t) == false if indexOf(s, t, 0) == -1

	// eqC6: equals(s, t) == false if length(s) != length(t)

	// eqC7: prefixOf(s,t) == false if contains(t, s) == false

	// eqC8: suffixOf(s,t) == false if contains(t, s) == false

	public static List<TrivialEquality> generateTrivialEqualitiesForConstantElement(SMTBool constantBool) {
		boolean value = constantBool.getBoolValue();
		if (value == true) {

			List<TrivialEquality> trivialEqualitiesTrue = new ArrayList<TrivialEquality>();

			trivialEqualitiesTrue.add(eqC0(constantBool));
			trivialEqualitiesTrue.add(eqC1(constantBool));
			trivialEqualitiesTrue.add(eqC2(constantBool));
			trivialEqualitiesTrue.add(eqC3(constantBool));
			trivialEqualitiesTrue.add(eqC4(constantBool));
			return trivialEqualitiesTrue;
		}
		// false
		List<TrivialEquality> trivialEqualitiesFalse = new ArrayList<TrivialEquality>();

		trivialEqualitiesFalse.add(eqC5(constantBool));
		trivialEqualitiesFalse.add(eqC6(constantBool));
		trivialEqualitiesFalse.add(eqC7(constantBool));
		trivialEqualitiesFalse.add(eqC8(constantBool));
		return trivialEqualitiesFalse;
	}

	private static TrivialEquality eqC0(SMTBool constantBool) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		return new TrivialEquality(new Contains(s, s, constantBool));
	}

	private static TrivialEquality eqC1(SMTBool constantBool) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		return new TrivialEquality(new Equals(s, s, constantBool));
	}

	private static TrivialEquality eqC2(SMTBool constantBool) {
		SMTString emptyString = new SMTString("empty", "", null, Operation.isConstant);
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		return new TrivialEquality(new PrefixOf(emptyString, s, constantBool));
	}

	private static TrivialEquality eqC3(SMTBool constantBool) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		return new TrivialEquality(new PrefixOf(s, s, constantBool));
	}

	private static TrivialEquality eqC4(SMTBool constantBool) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		return new TrivialEquality(new SuffixOf(s, s, constantBool));
	}

	private static TrivialEquality eqC5(SMTBool constantBool) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);

		SMTInt zero = new SMTInt(0, null, Operation.isConstant);
		SMTInt minusOne = new SMTInt(-1, null, Operation.isConstant);
		StringOperation indexOfMinusOne = new IndexOf(s, t, zero, minusOne);

		return new TrivialEquality(new And(new Contains(s, t, constantBool), indexOfMinusOne));
	}

	private static TrivialEquality eqC6(SMTBool constantBool) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);

		StringOperation lengthS = new Length(s);
		StringOperation lengthT = new Length(t);
		SMTBool falseResult = new SMTBool(false, null, Operation.isConstant);

		return new TrivialEquality(new And(new Equals(s, t, constantBool),
				new Equals(lengthS.getResult(), lengthT.getResult(), falseResult)));
	}

	private static TrivialEquality eqC7(SMTBool constantBool) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);

		SMTBool falseResult = new SMTBool(false, null, Operation.isConstant);

		return new TrivialEquality(new And(new PrefixOf(s, t, constantBool), new Contains(t, s, falseResult)));
	}

	private static TrivialEquality eqC8(SMTBool constantBool) {
		SMTString s = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString(AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);

		SMTBool falseResult = new SMTBool(false, null, Operation.isConstant);

		return new TrivialEquality(new And(new SuffixOf(s, t, constantBool), new Contains(t, s, falseResult)));
	}

}
