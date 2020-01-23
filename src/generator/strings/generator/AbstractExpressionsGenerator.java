/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings.generator;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.lang3.StringUtils;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;

import generator.operations.Operation;
import generator.operations.connectors.SMTElement;
import generator.strings.NamedExpression;
import generator.strings.SMTFile;
import generator.strings.Statistics;
import generator.strings.types.SMTConstructedObject;
import generator.strings.utils.SMTStringUtils;
import runner.Status;
import runner.TestsRunner;

public abstract class AbstractExpressionsGenerator {

	private int randomSeed;
	protected boolean justGenerate = false;

	public static boolean useTriggers;

	public static Status expectedStatus;
	protected Context ctx;
	protected TestsRunner runner;

	private Statistics statistics;

	public static String generatedTestsFolder = "generatedTests";
	protected final static String test = "test";
	protected static String prefix = generatedTestsFolder + "/" + test;
	public String seedFolder;

	public final static String suffix = ".smt2";
	public final static String testStatus = ":status";
	private final static String setRandomSeed = "(set-option :random-seed";
	private final static String produceModels = "(set-option :produce-models true)";
	public final static String produceUnsatCores = "(set-option :produce-unsat-cores true)";
	private final static String reasonUnknown = "(get-info :reason-unknown)";
	public final static String getUnsatCore = "(get-unsat-core)";
	public final static String getValue = "(get-value (";
	public final static String model = ";model:";
	public final static String actualStatus = ";actual status: ";

	// categories/transformations

	// sat
	public final static String operation = "operation";
	public final static String constant = "const";
	public final static String termSyn = "termSyn";

	// unsat
	public final static String equivalentFormula = "eqForm";
	public final static String largerUnsatCore = "unsatCore";
	public final static String redundant = "redundant";

	public final static String equivalentFormulaTriggers = "eqFormTriggers";
	public final static String largerUnsatCoreTriggers = "unsatCoreTriggers";
	public final static String redundantTriggers = "redundantTriggers";

	public final static String triggers = "triggers";
	public final static String unconstrained = "NO VALUE";

	private Map<Status, List<RewritingRule>> failedRulesWithStatusMap = new HashMap<Status, List<RewritingRule>>();
	// operation id -> list of failed rewriting rules
	private Map<Integer, List<RewritingRule>> failedRulesMap = new HashMap<Integer, List<RewritingRule>>();
	// operation id -> list of passed rewriting rules
	private Map<Integer, List<RewritingRule>> passedRulesMap = new HashMap<Integer, List<RewritingRule>>();

	// operation id -> {history depth -> {number of symbolic arguments -> list of
	// passed operations (their string representation)}}
	private Map<Integer, Map<Integer, Map<Integer, List<String>>>> passedOperationsMap = new HashMap<Integer, Map<Integer, Map<Integer, List<String>>>>();
	// operation id -> {history depth -> number of symbolic arguments -> list of
	// failed operations (their string representation)}
	private HashMap<Integer, Map<Integer, Map<Integer, List<String>>>> failedOperationsMap = new HashMap<Integer, Map<Integer, Map<Integer, List<String>>>>();

	protected List<RewritingRule> rewritingRules;

	// string constructor operations
	public static final int AT = 0;
	public static final int CONCAT = 1;
	public static final int INT_TO_STRING = 2;
	public static final int REPLACE = 3;
	public static final int SUBSTR = 4;

	protected final Integer[] stringConstructorOperations = new Integer[] { AT, CONCAT, INT_TO_STRING, REPLACE,
			SUBSTR };

	// int constructor operations
	public static final int INDEX_OF = 5;
	public static final int LENGTH = 6;
	public static final int STRING_TO_INT = 7;

	protected final Integer[] intConstructorOperations = new Integer[] { INDEX_OF, LENGTH, STRING_TO_INT };

	// boolean constructor operations
	public static final int CONTAINS = 8;
	public static final int EQUALS = 9;
	public static final int PREFIX_OF = 10;
	public static final int SUFFIX_OF = 11;

	protected final Integer[] booleanConstructorOperations = new Integer[] { CONTAINS, EQUALS, PREFIX_OF, SUFFIX_OF };
	protected final Integer[] negatedBooleanConstructorOperations = new Integer[] { NOT_CONTAINS, NOT_EQUALS,
			NOT_PREFIX_OF, NOT_SUFFIX_OF };

	public static final int NOT_CONTAINS = 12;
	public static final int NOT_EQUALS = 13;
	public static final int NOT_PREFIX_OF = 14;
	public static final int NOT_SUFFIX_OF = 15;

	public static final int totalNumberOfOperations = NOT_SUFFIX_OF + 1;

	// additional boolean operation
	public static final int NOT = 16;

	// explicit no-arg constructor
	protected AbstractExpressionsGenerator() {
		HashMap<String, String> cfg = new HashMap<String, String>();
		cfg.put("model", "true");
		this.ctx = new Context(cfg);
	}

	protected AbstractExpressionsGenerator(int randomSeed) {
		this.randomSeed = randomSeed;
		HashMap<String, String> cfg = new HashMap<String, String>();
		cfg.put("model", "true");
		this.ctx = new Context(cfg);
		this.rewritingRules = SMTStringUtils.getRules();
		this.seedFolder = "seed" + randomSeed;
		File folder = new File(generatedTestsFolder);
		if (!folder.exists()) {
			folder.mkdirs();
		}
	}

	public static void setGeneratedTestsFolder(String userDefinedFolder) {
		if (userDefinedFolder != null) {
			File folder = new File(userDefinedFolder);
			if (!folder.exists()) {
				folder.mkdirs();
			}
			generatedTestsFolder = userDefinedFolder;
			prefix = generatedTestsFolder + "/" + test;
		}
	}

	public void setTestsRunner(TestsRunner runner) {
		this.runner = runner;
		this.statistics = new Statistics(runner.getSmtSolver(), expectedStatus);
		this.failedRulesWithStatusMap = new HashMap<Status, List<RewritingRule>>();
		this.failedRulesMap = new HashMap<Integer, List<RewritingRule>>();
		this.passedRulesMap = new HashMap<Integer, List<RewritingRule>>();

		this.passedOperationsMap = new HashMap<Integer, Map<Integer, Map<Integer, List<String>>>>();
		this.failedOperationsMap = new HashMap<Integer, Map<Integer, Map<Integer, List<String>>>>();
	}

	protected void readPreviousTests(String transformation) {
		readFailingTests(transformation);
		readPassingTests(transformation);
	}

	private void readFailingTests(String transformation) {
		List<Status> failingStatus = new ArrayList<Status>();
		failingStatus.add(Status.incorrect_model);
		failingStatus.add(Status.incorrect_unsat_core);
		failingStatus.add(Status.sat);
		failingStatus.add(Status.unsat);
		failingStatus.add(Status.unknown);
		failingStatus.add(Status.timeout);
		failingStatus.add(Status.error);

		failingStatus.remove(expectedStatus);

		for (Status actualStatus : failingStatus) {

			File folder = new File(runner.getFailingTestsFolder(expectedStatus, actualStatus) + "/" + transformation);
			if (folder.exists()) {
				Collection<File> files = FileUtils.listFiles(folder, new String[] { "smt2" }, true);
				for (File file : files) {
					RewritingRule failedRule = readFromSMTfile(file);
					if (failedRule.getEquivalentFormulas().isEmpty()) {
						recordOperation(failedRule.getOperation(), failedOperationsMap);
					} else {
						addRuleToFailedRulesMap(actualStatus, failedRule);
					}
					statistics.recordFailedTest(transformation, actualStatus);
				}
			}
		}
	}

	private void readPassingTests(String transformation) {
		File folder = new File(runner.getPassingTestsFolder(expectedStatus) + "/" + transformation);
		if (!folder.exists()) {
			folder.mkdirs();
		}
		Collection<File> files = FileUtils.listFiles(folder, FileFilterUtils.suffixFileFilter(suffix),
				FileFilterUtils.notFileFilter(FileFilterUtils.or(FileFilterUtils.nameFileFilter("rules_based"),
						FileFilterUtils.nameFileFilter("execution_based"))));
		for (File file : files) {
			RewritingRule passedRule = readFromSMTfile(file);
			if (passedRule.getEquivalentFormulas().isEmpty()) {
				recordOperation(passedRule.getOperation(), passedOperationsMap);
			} else {
				addRuleToPassedRulesMap(passedRule);
			}
			statistics.recordPassedTest(transformation);
		}
	}

	protected void createTestFileAndRunTest(String fileName, RewritingRule rule, boolean recordOperation) {
		SMTFile smtFile = generateSMTfile(fileName, rule, expectedStatus);
		if (justGenerate) {
			// move file in the right folder
			File file = new File(fileName);
			fileName = fileName.replaceFirst(generatedTestsFolder + "/", "");
			String[] splitName = fileName.split("_");
			String operationName = splitName[1];
			operationName = operationName.replaceAll(AbstractExpressionsGenerator.suffix, "");
			String transformationName = SMTStringUtils.extractTransformationName(fileName, expectedStatus);
			String folderName = generatedTestsFolder + "/" + "expected_" + expectedStatus + "/" + seedFolder + "/"
					+ transformationName + "/" + operationName + "/";
			SMTStringUtils.moveFileToFolder(file, folderName, fileName);
			// record the rule as "passed", to avoid generating it again
			recordOperation(rule.getOperation(), passedOperationsMap);
			return;
		}
		if (smtFile != null) {
			String transformation = SMTStringUtils.extractTransformationName(fileName, expectedStatus);
			Status expectedStatus = SMTStringUtils.getExpectedStatus(smtFile.getName());
			Status actualStatus = runner.run(smtFile, expectedStatus);
			if (!expectedStatus.equals(actualStatus)) {
				statistics.recordFailedTest(transformation, actualStatus);
				if (recordOperation) {
					recordFailedTest(actualStatus, smtFile.getName(), rule);
				}
			} else {
				if (recordOperation) {
					if (rule.getEquivalentFormulas().isEmpty()) {
						recordOperation(rule.getOperation(), passedOperationsMap);
					} else {
						addRuleToPassedRulesMap(rule);
					}
				}
				statistics.recordPassedTest(transformation);
			}
		}
	}

	protected void createTestFileAndRunTest(String fileName, RewritingRule rule) {
		createTestFileAndRunTest(fileName, rule, true);
	}

	private void recordFailedTest(Status actualStatus, String fileName, RewritingRule rule) {
		// the pattern is the operation itself
		RewritingRule pattern = rule;
		runner.addPatternToFile(fileName, expectedStatus, actualStatus, pattern);
		if (rule.getEquivalentFormulas().isEmpty()) {
			recordOperation(rule.getOperation(), passedOperationsMap);
		} else {
			addRuleToFailedRulesMap(actualStatus, rule);
		}
	}

	private void addRuleToFailedRulesMap(Status actualStatus, RewritingRule rule) {
		List<RewritingRule> failedRewritingRulesForStatus;
		if (!failedRulesWithStatusMap.containsKey(actualStatus)) {
			failedRewritingRulesForStatus = new ArrayList<RewritingRule>();
			failedRulesWithStatusMap.put(actualStatus, failedRewritingRulesForStatus);
		} else {
			failedRewritingRulesForStatus = failedRulesWithStatusMap.get(actualStatus);
		}
		failedRewritingRulesForStatus.add(rule);

		Operation operation = rule.getOperation();
		int id = operation.getId();
		List<RewritingRule> failedRewritingRulesForOperation;
		if (!failedRulesMap.containsKey(id)) {
			failedRewritingRulesForOperation = new ArrayList<RewritingRule>();
			failedRulesMap.put(id, failedRewritingRulesForOperation);
		} else {
			failedRewritingRulesForOperation = failedRulesMap.get(id);
		}
		failedRewritingRulesForOperation.add(rule);

	}

	protected void addRuleToPassedRulesMap(RewritingRule rule) {
		Operation operation = rule.getOperation();
		if (operation != null) {
			int id = operation.getId();
			List<RewritingRule> passedRewritingRules;
			if (!passedRulesMap.containsKey(id)) {
				passedRewritingRules = new ArrayList<RewritingRule>();
				passedRulesMap.put(id, passedRewritingRules);
			} else {
				passedRewritingRules = passedRulesMap.get(id);
			}
			passedRewritingRules.add(rule);
		}
	}

	protected SMTFile generateSMTfile(String smtFileName, RewritingRule rule, Status expectedStatus) {
		SMTFile smtFile = createSMTfile(smtFileName, rule);
		return writeSMTfile(smtFile, expectedStatus);
	}

	protected SMTFile createSMTfile(String smtFileName, RewritingRule rule) {
		// only A - for sat (!A && B) - for unsat
		rule.shortenTmpVariableNames();

		Operation operation = rule.getOperation();
		List<NamedExpression> additionalFormulas = new ArrayList<NamedExpression>();
		BoolExpr smtFormula = operation.toSMTFormula(ctx);
		int assertionNumber = 0;
		String smtFormulaName = "a" + assertionNumber;
		assertionNumber++;

		List<String> unsatCore = new ArrayList<String>();
		unsatCore.add(smtFormulaName);

		List<SMTConstructedObject> witnesses = operation.getWitnesses();

		Map<SMTElement, Boolean> equivalentFormulasMap = rule.getEquivalentFormulasMap();

		for (SMTElement equivalentFormula : equivalentFormulasMap.keySet()) {
			BoolExpr equivalentSmtFormula = equivalentFormula.toSMTFormula(ctx);
			String equivalentFormulaName = "a" + assertionNumber;
			assertionNumber++;
			if (equivalentFormulasMap.get(equivalentFormula)) {
				unsatCore.add(equivalentFormulaName);
			}
			additionalFormulas.add(new NamedExpression(equivalentFormulaName, equivalentSmtFormula));
			List<SMTConstructedObject> witnessesFromEquivalentFormula = equivalentFormula.getWitnesses();
			witnesses = SMTStringUtils.unionWithoutDuplicates(witnesses, witnessesFromEquivalentFormula);
		}

		return new SMTFile(smtFileName, operation, new NamedExpression(smtFormulaName, smtFormula), additionalFormulas,
				witnesses, unsatCore);
	}

	private SMTFile writeSMTfile(SMTFile smtFile, Status expectedStatus) {
		String smtFileName = smtFile.getName();
		List<SMTConstructedObject> witnesses = smtFile.getAllSymbolicArguments();
		List<NamedExpression> additionalNamedFormulas = smtFile.getAdditionalNamedFormulas();

		NamedExpression namedSMTFormula = smtFile.getNamedSMTFormula();
		BoolExpr smtFormula = namedSMTFormula.getFormula();

		int numberOfAdditionalFormulas = additionalNamedFormulas.size();
		BoolExpr[] additionalFormulasArray = new BoolExpr[numberOfAdditionalFormulas];
		String[] additionalFormulasNames = new String[numberOfAdditionalFormulas];

		for (int index = 0; index < additionalNamedFormulas.size(); index++) {
			NamedExpression anExpression = additionalNamedFormulas.get(index);
			additionalFormulasArray[index] = anExpression.getFormula();
			additionalFormulasNames[index] = anExpression.getName();
		}

		String smtString = ctx.benchmarkToSMTString("", "", expectedStatus.name(), "", additionalFormulasArray,
				smtFormula);

		int numberOfVariables = StringUtils.countMatches(smtString, "declare-fun");
		if (numberOfVariables != witnesses.size()) {
			System.out.println("ERROR");
		}
		assert (numberOfVariables == witnesses.size());

		if (expectedStatus == Status.unsat) {
			smtString = addNamedAssertions(smtString, namedSMTFormula.getName(), additionalFormulasNames);
		}

		try {
			PrintWriter out = new PrintWriter(smtFileName);
			out.println(setRandomSeed + " " + randomSeed + ")");
			out.println(produceModels);
			out.println(produceUnsatCores);
			out.println(smtString);

			if (expectedStatus == Status.unsat) {
				out.println(getUnsatCore);
			}
			if (expectedStatus == Status.sat && !witnesses.isEmpty()) {
				out.print(getValue);
				for (SMTConstructedObject argument : witnesses) {
					out.print(argument.getName() + " ");
				}
				out.println("))");
			}
			out.println(reasonUnknown);
			out.println();

			for (SMTConstructedObject argument : witnesses) {
				String witnessValue = argument.getWitness();
				witnessValue = witnessValue.replace("\n", "\\n");
				out.println(";" + argument.getName() + " = " + witnessValue);
			}

			out.println();
			if (expectedStatus == Status.unsat) {
				out.print(";unsat core: ");
				for (String assertionName : smtFile.getUnsatCore()) {
					out.print(assertionName + " ");
				}
				out.println();
			}
			out.println();
			out.close();
			String smtTestFileName = smtFileName.substring(smtFileName.lastIndexOf("/") + 1);
			System.out.println("Successfully generated " + smtTestFileName);

		} catch (

		FileNotFoundException e) {
			e.printStackTrace();
			return null;
		}
		return smtFile;
	}

	private String addNamedAssertions(String smtString, String smtFormulaName, String[] additionalFormulasNames) {
		String updatedSMTString = "";
		String checkSat = "(check-sat)";

		smtString = smtString.replace(checkSat, "");
		String[] assertions = smtString.split("\\(assert");
		updatedSMTString = assertions[0];

		String assertString = "(assert";
		String exclamationMark = "(!";
		String named = ":named";
		int nameIndex = 0;
		for (int i = 1; i < assertions.length; i++) {
			String assertion = assertions[i];
			int index = assertion.lastIndexOf(")");
			updatedSMTString += assertString + " " + exclamationMark + " " + assertion.substring(0, index) + " " + named
					+ " ";
			if (nameIndex < additionalFormulasNames.length) {
				updatedSMTString += additionalFormulasNames[nameIndex];
				nameIndex++;
			} else {
				updatedSMTString += smtFormulaName;
			}
			updatedSMTString += "))\n";
		}
		updatedSMTString += checkSat + "\n";
		return updatedSMTString;
	}

	protected void recordOperation(Operation operation,
			Map<Integer, Map<Integer, Map<Integer, List<String>>>> operationsMap) {
		Map<Integer, Map<Integer, List<String>>> operationsWithHistoryDepth;
		Map<Integer, List<String>> operationsWithNumberOfSymbolicArguments;
		List<String> operations;
		int id = operation.getId();
		int historyDepth = operation.getHistoryDepth();
		int number = operation.getAllSymbolicArguments().size();

		if (!operationsMap.containsKey(id)) {
			operations = new ArrayList<String>();
			operationsWithNumberOfSymbolicArguments = new HashMap<Integer, List<String>>();
			operationsWithNumberOfSymbolicArguments.put(number, operations);

			operationsWithHistoryDepth = new HashMap<Integer, Map<Integer, List<String>>>();
			operationsWithHistoryDepth.put(historyDepth, operationsWithNumberOfSymbolicArguments);
			operationsMap.put(id, operationsWithHistoryDepth);
		} else {
			operationsWithHistoryDepth = operationsMap.get(id);
			if (!operationsWithHistoryDepth.containsKey(historyDepth)) {
				operations = new ArrayList<String>();
				operationsWithNumberOfSymbolicArguments = new HashMap<Integer, List<String>>();
				operationsWithNumberOfSymbolicArguments.put(number, operations);

				operationsWithHistoryDepth.put(historyDepth, operationsWithNumberOfSymbolicArguments);
			} else {
				operationsWithNumberOfSymbolicArguments = operationsWithHistoryDepth.get(historyDepth);
				if (!operationsWithNumberOfSymbolicArguments.containsKey(number)) {
					operations = new ArrayList<String>();
					operationsWithNumberOfSymbolicArguments.put(number, operations);
				} else {
					operations = operationsWithNumberOfSymbolicArguments.get(number);
				}
			}
		}
		operations.add(operation.toString());
	}

	protected void printFailedPatterns() {
		System.out.println();
		String smtSolver = runner.getSmtSolver();
		for (Status status : failedRulesWithStatusMap.keySet()) {
			System.out.println(smtSolver + " returns " + status + " for the following patterns: ");
			for (RewritingRule RewritingRule : failedRulesWithStatusMap.get(status)) {
				System.out.println(RewritingRule);
				System.out.println();
			}
			System.out.println();
		}
	}

	protected void printStatistics() {
		long time = System.currentTimeMillis();
		String fileName = "statistics" + time + "_" + runner.getSmtSolver() + "_" + expectedStatus;
		if (useTriggers && expectedStatus == Status.unsat) {
			fileName += "_" + triggers;
		}
		fileName += ".txt";
		try {
			PrintWriter out = new PrintWriter(fileName);
			out.println(statistics);
			out.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		System.out.println("Printed statistics!");
	}

	public abstract RewritingRule readFromSMTfile(File smtFile);

	protected boolean alreadyFailedRule(RewritingRule rule) {
		int operationId = rule.getOperation().getId();
		List<RewritingRule> rules = failedRulesMap.get(operationId);
		if (rules == null) {
			return false;
		}
		return rules.contains(rule);
	}

	private boolean containsOperation(Operation anOperation,
			Map<Integer, Map<Integer, Map<Integer, List<String>>>> givenOperationsMap) {
		int operationId = anOperation.getId();
		return containsOperationWithId(anOperation, givenOperationsMap, operationId, true);
	}

	private boolean containsOperationWithId(Operation anOperation,
			Map<Integer, Map<Integer, Map<Integer, List<String>>>> givenOperationsMap, int operationId,
			boolean tryComplementaryMap) {
		Map<Integer, Map<Integer, List<String>>> operationsMapId = givenOperationsMap.get(operationId);
		if (operationsMapId == null) {
			return false;
		}

		int historyDepth = anOperation.getHistoryDepth();
		Map<Integer, List<String>> operationsWithHistoryDepth = operationsMapId.get(historyDepth);
		if (operationsWithHistoryDepth == null) {
			return false;
		}
		int number = anOperation.getAllSymbolicArguments().size();
		List<String> operations = operationsWithHistoryDepth.get(number);
		if (operations == null) {
			return false;
		}
		String anOperationAsString = anOperation.toString();
		// search for operation that has identical toString
		if (operations.contains(anOperationAsString)) {
			return true;
		}
		if (tryComplementaryMap) {
			Integer complemenetaryId = SMTStringUtils.getComplementaryId(operationId);
			if (complemenetaryId == null) {
				return false;
			}
			return containsOperationWithId(anOperation, givenOperationsMap, complemenetaryId, !tryComplementaryMap);
		}
		return false;
	}

	protected boolean alreadyPassedOperation(Operation anOperation) {
		return containsOperation(anOperation, passedOperationsMap);
	}

	protected boolean alreadyFailedOperation(Operation anOperation) {
		return containsOperation(anOperation, failedOperationsMap);
	}

	private void removeOperationWithId(int operationId,
			Map<Integer, Map<Integer, Map<Integer, List<String>>>> givenOperationsMap) {
		givenOperationsMap.put(operationId, new HashMap<Integer, Map<Integer, List<String>>>());
	}

	protected void removeOperations(int operationId) {
		removeOperationWithId(operationId, passedOperationsMap);
		removeOperationWithId(operationId, failedOperationsMap);
	}

	protected void cleanBooleanConstructorOperations() {
		for (int operationId : booleanConstructorOperations) {
			removeOperations(operationId);
		}
		for (int operationId : negatedBooleanConstructorOperations) {
			removeOperations(operationId);
		}
	}

	protected boolean alreadyPassedRule(RewritingRule rule) {
		int operationId = rule.getOperation().getId();
		List<RewritingRule> rules = passedRulesMap.get(operationId);
		if (rules == null) {
			return false;
		}
		return rules.contains(rule);
	}

}
