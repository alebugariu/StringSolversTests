/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings.generator;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Expr;

import generator.operations.Operation;
import generator.operations.connectors.SMTElement;
import generator.operations.strings.StringOperation;
import generator.strings.generator.factory.SMTBoolsFactory;
import generator.strings.generator.factory.SMTIntsFactory;
import generator.strings.generator.factory.SMTStringsFactory;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;
import generator.strings.utils.SMTParserUtils;
import generator.strings.utils.SMTStringUtils;
import runner.Status;

public class SatExpressionsGenerator extends RulesBasedExpressionsGenerator {

	// special strings of length 0 or 1
	private final String[] specialStrings = new String[] { "", "\"a\"", "a", "\\a", "\n",
			new String(new char[] { 0x0A }) };

	private final String[] specialStringsShort = new String[] { "a", "" };

	// special integers
	private final Integer[] specialInts = { -1, 0, 2 };

	private final Integer[] specialIntsShort = { -1, 0 };

	// special booleans
	private final Boolean[] specialBools = { true, false };

	public SatExpressionsGenerator(int randomSeed) {
		super(randomSeed);
		expectedStatus = Status.sat;
	}

	// explicit no-arg constructor
	public SatExpressionsGenerator() {
	}

	@Override
	protected void extractOperationAndRunTest(RewritingRule rule, String fileName) {
		Operation operation = rule.getOperation();
		int operationId = operation.getId();
		if (Arrays.asList(negatedBooleanConstructorOperations).contains(operationId)) {
			return; // already tested
		}
		if (Arrays.asList(booleanConstructorOperations).contains(operationId)) {
			// make the result generic instead of true/false
			operation = operation.copy();
			SMTBool result = new SMTBool("result", AbstractExpressionsGenerator.unconstrained,
					operation.getResult().getValue(), null, !Operation.isConstant, true);
			operation.setResult(result);
		}
		generateWitness(operation);
		RewritingRule simplifiedRule = new RewritingRule(rule.getName(), operation, new HashMap<SMTElement, Boolean>());
		if (!alreadyFailedOperation(operation) && !alreadyPassedOperation(operation)) {
			createTestFileAndRunTest(fileName, simplifiedRule);
		}
	}

	@Override
	public void generateAndRun() {
		testOperations();
		testWithConstants();
		testInteractionsBetweenOperations();
	}

	private void testInteractionsBetweenOperations() {
		System.out.println("\nStep 2: term synthesis transformation");

		// sequence_length -> List<SMTString>; for initial Strings sequence_length = 0
		Map<Integer, List<SMTString>> complexStringsMap = new HashMap<Integer, List<SMTString>>();
		// sequence_length -> List<SMTInt>; for initial ints sequence_length = 0
		Map<Integer, List<SMTInt>> complexIntsMap = new HashMap<Integer, List<SMTInt>>();
		// sequence_length -> List<SMTBool>; for initial bools sequence_length = 0
		Map<Integer, List<SMTBool>> complexBoolsMap = new HashMap<Integer, List<SMTBool>>();

		List<SMTString> initialStrings = initializeSMTStrings(specialStringsShort, specialIntsShort);
		List<SMTInt> initialInts = initializeSMTInts(specialIntsShort);
		List<SMTBool> initialBools = initializeSMTBools(specialBools);

		complexStringsMap.put(0, initialStrings);
		complexIntsMap.put(0, initialInts);
		complexBoolsMap.put(0, initialBools);

		long time = System.currentTimeMillis();

		// the maximum number of function applications used to obtain the arguments and
		// the results
		int bound = 1;

		List<SMTString> lessComplexStrings = complexStringsMap.get(bound - 1);
		List<SMTString> moreComplexStrings = new ArrayList<SMTString>();
		List<SMTInt> lessComplexInts = complexIntsMap.get(bound - 1);
		List<SMTInt> moreComplexInts = new ArrayList<SMTInt>();
		List<SMTBool> moreComplexBools = new ArrayList<SMTBool>();

		createComplexStrings(lessComplexStrings, moreComplexStrings, lessComplexInts);
		createComplexInts(lessComplexStrings, moreComplexStrings, lessComplexInts, moreComplexInts);
		createComplexBooleans(lessComplexStrings, moreComplexBools);

		complexStringsMap.put(bound, moreComplexStrings);
		complexIntsMap.put(bound, moreComplexInts);
		complexBoolsMap.put(bound, moreComplexBools);

		for (int operationId = 0; operationId < totalNumberOfOperations; operationId++) {
			String operationName = SMTStringUtils.getNameFromId(operationId);
			if (bound == 1 && !justGenerate) {
				readPreviousTests(termSyn + "/" + operationName);
			}

			int index = 0;
			List<StringOperation> complexOperations = generateOperationsWithIdAndSetResults(operationId,
					moreComplexStrings, moreComplexInts, moreComplexBools);

			for (StringOperation operation : complexOperations) {

				List<SMTConstructedObject> constantArguments = operation.getConstantArguments();
				List<String> priorValues = extractPriorValues(constantArguments);
				List<Integer> indexesForConstantOperands = SMTStringUtils.makeIndexList(constantArguments);
				String number = indexesForConstantOperands.toString().replaceAll("\\[|\\]|,| ", "");

				String testName = time + "_" + operationName + "_" + termSyn + "_" + bound + "_" + index + "_" + number;
				String fileName = prefix + testName + suffix;

				setValuesAndNames(constantArguments, priorValues);
				if (justGenerate || !alreadyPassedOperation(operation) && !alreadyFailedOperation(operation)) {
					createTestFileAndRunTest(fileName,
							new RewritingRule(operationName, operation, new HashMap<SMTElement, Boolean>()), false);
				}
				index++;
			}
			if (!Arrays.asList(booleanConstructorOperations).contains(operationId)) {
				removeOperations(operationId);
			}
		}
		cleanBooleanConstructorOperations();
	}

	private void testWithConstants() {
		System.out.println("\nStep 2: constant assignment transformation");
		List<SMTString> initialStrings = initializeSMTStrings(specialStrings, specialInts);
		List<SMTInt> initialInts = initializeSMTInts(specialInts);

		long time = System.currentTimeMillis();

		for (int operationId = 0; operationId < totalNumberOfOperations; operationId++) {
			String operationName = SMTStringUtils.getNameFromId(operationId);

			if (!justGenerate) {
				readPreviousTests(constant + "/" + operationName);
			}

			List<StringOperation> satOperations = createOperationWithConstants(operationId, initialStrings,
					initialInts);
			int index = 0;
			for (StringOperation operation : satOperations) {

				List<SMTConstructedObject> constantArguments = operation.getConstantArguments();
				List<String> priorValues = extractPriorValues(constantArguments);
				List<Integer> indexesForConstantOperands = SMTStringUtils.makeIndexList(constantArguments);
				List<List<Integer>> powerSet = SMTStringUtils.powerSet(indexesForConstantOperands);

				for (List<Integer> genericPositions : powerSet) {

					String number = genericPositions.toString().replaceAll("\\[|\\]|,| ", "");

					String testName = time + "_" + operationName + "_" + constant + "_" + index + "_" + number;
					String fileName = prefix + testName + suffix;

					setValues(constantArguments, genericPositions, priorValues);

					if (!alreadyPassedOperation(operation) && !alreadyFailedOperation(operation)) {
						createTestFileAndRunTest(fileName,
								new RewritingRule(operationName, operation, new HashMap<SMTElement, Boolean>()));
					}

					resetValues(constantArguments, priorValues);
				}
				index++;
			}
			if (!Arrays.asList(booleanConstructorOperations).contains(operationId)) {
				removeOperations(operationId);
			}
		}
		cleanBooleanConstructorOperations();
	}

	private void resetValues(List<SMTConstructedObject> constantArguments, List<String> priorValues) {
		for (int index = 0; index < constantArguments.size(); index++) {
			SMTConstructedObject argument = constantArguments.get(index);
			argument.setValue(priorValues.get(index));
			argument.setIsConstant(true);
		}
	}

	private List<String> extractPriorValues(List<SMTConstructedObject> constantArguments) {
		List<String> priorValues = new ArrayList<String>();
		for (SMTConstructedObject argument : constantArguments) {
			priorValues.add(argument.getValue());
		}
		return priorValues;
	}

	private void setValues(List<SMTConstructedObject> constantArguments, List<Integer> genericPositions,
			List<String> priorValues) {
		for (int index = 0; index < constantArguments.size(); index++) {
			if (genericPositions.contains(index)) {
				SMTConstructedObject argument = constantArguments.get(index);
				argument.setValue(unconstrained);
				argument.setIsConstant(false);
				argument.setWitness(priorValues.get(index));
			}
		}
	}

	private void setValuesAndNames(List<SMTConstructedObject> constantArguments, List<String> priorValues) {
		// [value, type] -> name
		Map<List<String>, String> valuesToNames = new HashMap<List<String>, String>();
		for (int index = 0; index < constantArguments.size(); index++) {
			String priorValue = priorValues.get(index);
			SMTConstructedObject argument = constantArguments.get(index);
			argument.setValue(unconstrained);
			argument.setIsConstant(false);
			argument.setWitness(priorValue);

			List<String> valuesAndTypes = new ArrayList<String>();
			valuesAndTypes.add(priorValue);
			valuesAndTypes.add(getType(argument));
			if (valuesToNames.containsKey(valuesAndTypes)) {
				argument.setName(valuesToNames.get(valuesAndTypes));
			} else {
				valuesToNames.put(valuesAndTypes, argument.getName());
			}
		}
	}

	private String getType(SMTConstructedObject arg) {
		if (arg instanceof SMTInt) {
			return "Int";
		}
		if (arg instanceof SMTString) {
			return "String";
		}
		if (arg instanceof SMTBool) {
			return "Bool";
		}
		return null;
	}

	private List<StringOperation> createOperationWithConstants(int operationId, List<SMTString> constantStrings,
			List<SMTInt> constantInts) {

		List<StringOperation> operations = null;

		switch (operationId) {
		case AT: {
			operations = SMTStringsFactory.generateAtOperations(constantStrings, constantInts);
			break;
		}
		case CONCAT: {
			operations = SMTStringsFactory.generateConcatOperations(constantStrings);
			break;
		}
		case INT_TO_STRING: {
			operations = SMTStringsFactory.generateIntToStringOperations(constantInts);
			break;
		}
		case REPLACE: {
			operations = SMTStringsFactory.generateReplaceOperations(constantStrings);
			break;
		}
		case SUBSTR: {
			operations = SMTStringsFactory.generateSubstrOperations(constantStrings, constantInts);
			break;
		}
		case INDEX_OF: {
			operations = SMTIntsFactory.generateIndexOfOperations(constantStrings, constantInts);
			break;
		}
		case LENGTH: {
			operations = SMTIntsFactory.generateLengthOperations(constantStrings);
			break;
		}
		case STRING_TO_INT: {
			operations = SMTIntsFactory.generateStringToIntOperations(constantStrings);
			break;
		}
		case CONTAINS:
		case NOT_CONTAINS: {
			operations = SMTBoolsFactory.generateContainsOperations(constantStrings);
			break;
		}
		case EQUALS:
		case NOT_EQUALS: {
			operations = SMTBoolsFactory.generateEqualsOperations(constantStrings);
			break;
		}
		case PREFIX_OF:
		case NOT_PREFIX_OF: {
			operations = SMTBoolsFactory.generatePrefixOfOperations(constantStrings);
			break;
		}
		case SUFFIX_OF:
		case NOT_SUFFIX_OF: {
			operations = SMTBoolsFactory.generateSuffixOfOperations(constantStrings);
			break;
		}
		}
		List<StringOperation> filteredOperations = new ArrayList<StringOperation>();
		for (StringOperation anOperation : operations) {
			if (!alreadyPassedOperation(anOperation) && !alreadyFailedOperation(anOperation)) {
				filteredOperations.add(anOperation);
			}
		}
		if (Arrays.asList(booleanConstructorOperations).contains(operationId)) {
			List<StringOperation> trueResults = new ArrayList<StringOperation>();
			for (StringOperation anOperation : filteredOperations) {
				SMTBool result = (SMTBool) anOperation.getResult();
				if (result.getBoolValue() == true) {
					trueResults.add(anOperation);
				}
			}
			return trueResults;
		}
		if (Arrays.asList(negatedBooleanConstructorOperations).contains(operationId)) {
			List<StringOperation> falseResults = new ArrayList<StringOperation>();
			for (StringOperation anOperation : filteredOperations) {
				SMTBool result = (SMTBool) anOperation.getResult();
				if (result.getBoolValue() != true) {
					falseResults.add(anOperation);
				}
			}
			return falseResults;
		}
		return filteredOperations;
	}

	private void createComplexStrings(List<SMTString> lessComplexStrings, List<SMTString> moreComplexStrings,
			List<SMTInt> lessComplexInts) {

		for (int operationId : stringConstructorOperations) {

			List<StringOperation> operations = new ArrayList<StringOperation>();

			switch (operationId) {
			case AT: {
				operations = SMTStringsFactory.generateAtOperations(lessComplexStrings, lessComplexInts);
				break;
			}
			case CONCAT: {
				operations = SMTStringsFactory.generateConcatOperations(lessComplexStrings);
				break;
			}
			case INT_TO_STRING: {
				operations = SMTStringsFactory.generateIntToStringOperations(lessComplexInts);
				break;
			}
			case REPLACE: {
				operations = SMTStringsFactory.generateReplaceOperations(lessComplexStrings);
				break;
			}
			case SUBSTR: {
				operations = SMTStringsFactory.generateSubstrOperations(lessComplexStrings, lessComplexInts);
				break;
			}
			}
			for (StringOperation anOperation : operations) {
				if (!alreadyFailedOperation(anOperation)) {
					SMTString result = (SMTString) anOperation.getResult();
					moreComplexStrings.add(result);
				}
			}
		}
	}

	private void createComplexInts(List<SMTString> lessComplexStrings, List<SMTString> moreComplexStrings,
			List<SMTInt> lessComplexInts, List<SMTInt> moreComplexInts) {

		for (int operationId : intConstructorOperations) {

			List<StringOperation> operations = new ArrayList<StringOperation>();

			switch (operationId) {
			case AbstractExpressionsGenerator.INDEX_OF: {
				operations = SMTIntsFactory.generateIndexOfOperations(lessComplexStrings, lessComplexInts);
				break;
			}
			case AbstractExpressionsGenerator.LENGTH: {
				operations = SMTIntsFactory.generateLengthOperations(lessComplexStrings);
				break;
			}
			case AbstractExpressionsGenerator.STRING_TO_INT: {
				operations = SMTIntsFactory.generateStringToIntOperations(lessComplexStrings);
				break;
			}
			}
			for (StringOperation anOperation : operations) {
				if (!alreadyFailedOperation(anOperation)) {
					SMTInt result = (SMTInt) anOperation.getResult();
					moreComplexInts.add(result);
				}
			}
		}
	}

	private void createComplexBooleans(List<SMTString> lessComplexStrings, List<SMTBool> moreComplexBools) {

		for (int operationId : booleanConstructorOperations) {

			List<StringOperation> operations = new ArrayList<StringOperation>();

			switch (operationId) {
			case AbstractExpressionsGenerator.CONTAINS: {
				operations = SMTBoolsFactory.generateContainsOperations(lessComplexStrings);
				break;
			}
			case AbstractExpressionsGenerator.EQUALS: {
				operations = SMTBoolsFactory.generateEqualsOperations(lessComplexStrings);
				break;
			}
			case AbstractExpressionsGenerator.PREFIX_OF: {
				operations = SMTBoolsFactory.generatePrefixOfOperations(lessComplexStrings);
				break;
			}
			case AbstractExpressionsGenerator.SUFFIX_OF: {
				operations = SMTBoolsFactory.generateSuffixOfOperations(lessComplexStrings);
				break;
			}
			}
			for (StringOperation anOperation : operations) {
				if (!alreadyFailedOperation(anOperation)) {
					SMTBool result = (SMTBool) anOperation.getResult();
					moreComplexBools.add(result);
				}
			}
		}
	}

	private List<StringOperation> generateOperationsWithIdAndSetResults(int operationId, List<SMTString> complexStrings,
			List<SMTInt> complexInts, List<SMTBool> complexBools) {
		List<StringOperation> operations = generateOperationsWithIdAndDistinctHistory(operationId, complexStrings,
				complexInts);

		List<StringOperation> filteredOperations = new ArrayList<StringOperation>();
		for (StringOperation operation : operations) {
			SMTConstructedObject result = operation.getResult();
			List<SMTConstructedObject> candidateResults = getPossibleResults(result, complexStrings, complexInts,
					complexBools);
			for (SMTConstructedObject aResult : candidateResults) {
				StringOperation copy = (StringOperation) operation.copy();
				copy.setResult(aResult.copyWithoutName());
				copy.assignNamesToArguments();
				filteredOperations.add(copy);
			}
		}
		return filteredOperations;
	}

	private List<SMTConstructedObject> getPossibleResults(SMTConstructedObject result, List<SMTString> complexStrings,
			List<SMTInt> complexInts, List<SMTBool> complexBools) {
		String value = result.getValue();
		List<? extends SMTConstructedObject> complexElements;
		if (result instanceof SMTInt) {
			complexElements = complexInts;
		} else if (result instanceof SMTString) {
			complexElements = complexStrings;
		} else {
			complexElements = complexBools;
		}
		List<SMTConstructedObject> possibleResults = new ArrayList<SMTConstructedObject>();
		List<List<Integer>> seenHistory = new ArrayList<List<Integer>>();
		for (SMTConstructedObject arg : complexElements) {
			if (arg.getValue().equals(value) && !arg.equals(result)) {
				List<Integer> historyForResult = arg.getConstructionHistory();
				if (!seenHistory.contains(historyForResult)) {
					possibleResults.add(arg);
					seenHistory.add(historyForResult);
				}
			}
		}
		return possibleResults;
	}

	private List<StringOperation> generateOperationsWithIdAndDistinctHistory(int operationId,
			List<SMTString> complexStrings, List<SMTInt> complexInts) {
		List<StringOperation> operations = null;
		switch (operationId) {
		case AT: {
			operations = SMTStringsFactory.generateAtOperationsWithDistinctHistory(complexStrings, complexInts);
			break;
		}
		case CONCAT: {
			operations = SMTStringsFactory.generateConcatOperationsWithDistinctHistory(complexStrings);
			break;
		}
		case INT_TO_STRING: {
			operations = SMTStringsFactory.generateIntToStringOperationsWithDistinctHistory(complexInts);
			break;
		}
		case REPLACE: {
			operations = SMTStringsFactory.generateReplaceOperationsWithDistinctHistory(complexStrings);
			break;
		}
		case SUBSTR: {
			operations = SMTStringsFactory.generateSubstrOperationsWithDistinctHistory(complexStrings, complexInts);
			break;
		}
		case INDEX_OF: {
			operations = SMTIntsFactory.generateIndexOfOperationsWithDistinctHistory(complexStrings, complexInts);
			break;
		}
		case LENGTH: {
			operations = SMTIntsFactory.generateLengthOperationsWithDistinctHistory(complexStrings);
			break;
		}
		case STRING_TO_INT: {
			operations = SMTIntsFactory.generateStringToIntOperationsWithDistinctHistory(complexStrings);
			break;
		}
		case CONTAINS:
		case NOT_CONTAINS: {
			operations = SMTBoolsFactory.generateContainsOperationsWithDistinctHistory(complexStrings);
			break;
		}
		case EQUALS:
		case NOT_EQUALS: {
			operations = SMTBoolsFactory.generateEqualsOperationsWithDistinctHistory(complexStrings);
			break;
		}
		case PREFIX_OF:
		case NOT_PREFIX_OF: {
			operations = SMTBoolsFactory.generatePrefixOfOperationsWithDistinctHistory(complexStrings);
			break;
		}
		case SUFFIX_OF:
		case NOT_SUFFIX_OF: {
			operations = SMTBoolsFactory.generateSuffixOfOperationsWithDistinctHistory(complexStrings);
			break;
		}
		}
		if (Arrays.asList(booleanConstructorOperations).contains(operationId)) {
			List<StringOperation> trueResults = new ArrayList<StringOperation>();
			for (StringOperation anOperation : operations) {
				SMTBool result = (SMTBool) anOperation.getResult();
				if (result.getBoolValue() == true) {
					trueResults.add(anOperation);
				}
			}
			return trueResults;
		}
		if (Arrays.asList(negatedBooleanConstructorOperations).contains(operationId)) {
			List<StringOperation> falseResults = new ArrayList<StringOperation>();
			for (StringOperation anOperation : operations) {
				SMTBool result = (SMTBool) anOperation.getResult();
				if (result.getBoolValue() != true) {
					falseResults.add(anOperation);
				}
			}
			return falseResults;
		}
		return operations;
	}

	public Status getStatus() {
		return expectedStatus;
	}

	private List<SMTInt> initializeSMTInts(Integer[] integers) {
		List<SMTInt> initialInts = new ArrayList<SMTInt>();

		for (int i = 0; i < integers.length; i++) {
			SMTInt integer = new SMTInt(integers[i], null, true);
			if (!initialInts.contains(integer)) {
				initialInts.add(integer);
			}
		}
		return initialInts;
	}

	private List<SMTBool> initializeSMTBools(Boolean[] bools) {
		List<SMTBool> initialBools = new ArrayList<SMTBool>();

		for (int i = 0; i < bools.length; i++) {
			SMTBool integer = new SMTBool(bools[i], null, true);
			if (!initialBools.contains(integer)) {
				initialBools.add(integer);
			}
		}
		return initialBools;
	}

	private List<SMTString> initializeSMTStrings(String[] strings, Integer[] integers) {
		List<SMTString> initialStrings = new ArrayList<SMTString>();

		for (int i = 0; i < strings.length; i++) {
			SMTString string = new SMTString(strings[i], null, true);
			if (!initialStrings.contains(string)) {
				initialStrings.add(string);
			}
		}

		for (int i = 0; i < integers.length; i++) {
			SMTString string = new SMTString(String.valueOf(integers[i]), null, true);
			if (!initialStrings.contains(string)) {
				initialStrings.add(string);
			}
		}
		return initialStrings;
	}

	@Override
	public RewritingRule readFromSMTfile(File smtFile) {
		Operation operation = null;
		try {
			Map<String, String> variablesToValues = new HashMap<String, String>();
			List<String> assertions = new ArrayList<String>();
			BoolExpr smtExpr = SMTParserUtils.getSMTExpressionFromFile(smtFile, variablesToValues, assertions, ctx);

			Expr testedFormula = smtExpr.getArgs()[0]; // to remove the equality around the operation
			Expr result = smtExpr.getArgs()[1];
			operation = SMTParserUtils.reconstructOperation(variablesToValues, testedFormula,
					new ArrayList<SMTConstructedObject>());
			SMTConstructedObject operationResult = SMTParserUtils.reconstructResult(variablesToValues, result,
					new ArrayList<SMTConstructedObject>());
			operationResult.setValue(SMTStringUtils.withoutSpecialCharacters(operationResult.getValue()));
			operation.setResult(operationResult);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return new RewritingRule(null, operation, new HashMap<SMTElement, Boolean>());
	}

	private void generateWitness(Operation operation) {
		int stringsIndex = 0;
		int intsIndex = 0;
		SMTConstructedObject result = operation.getResult();
		// pick as value for the arguments the first constant of the corresponding type
		pickValuesForArguments(operation, stringsIndex, intsIndex);
		result.setValue(operation.apply().getValue());
		result.setWitness(result.getValue());
	}

	private void pickValuesForArguments(Operation operation, int stringsIndex, int intsIndex) {
		for (SMTConstructedObject arg : operation.getArguments()) {
			if (arg instanceof SMTString) {
				arg.setValue(specialStrings[stringsIndex]);
				arg.setWitness(arg.getValue());
			} else if (arg instanceof SMTInt) {
				arg.setValue(String.valueOf(specialInts[intsIndex]));
				arg.setWitness(arg.getValue());
			}
		}
	}

}
