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

import org.apache.commons.io.FileUtils;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Expr;

import generator.operations.Not;
import generator.operations.Operation;
import generator.operations.connectors.Forall;
import generator.operations.connectors.SMTElement;
import generator.strings.TrivialEquality;
import generator.strings.generator.factory.SMTBoolsFactory;
import generator.strings.generator.factory.SMTIntsFactory;
import generator.strings.generator.factory.SMTStringsFactory;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;
import generator.strings.utils.SMTParserUtils;
import runner.Status;

public class UnsatExpressionsGenerator extends RulesBasedExpressionsGenerator {

	public static final String fresh = "fresh";

	public UnsatExpressionsGenerator(int randomSeed) {
		super(randomSeed);
		expectedStatus = Status.unsat;
	}

	// explicit no-arg constructor
	public UnsatExpressionsGenerator() {
	}

	@Override
	protected void extractOperationAndRunTest(RewritingRule rule, String fileName) {
		if (rule.getEquivalentFormulas().isEmpty()) {
			// primitive operation, skip
			return;
		}
		Operation operation = rule.getOperation();
		Not negation = new Not(operation);
		RewritingRule updatedRule = new RewritingRule(rule.getName(), negation, rule.getEquivalentFormulasMap());
		if (!alreadyFailedRule(updatedRule) && !alreadyPassedRule(updatedRule)) {
			createTestFileAndRunTest(fileName, updatedRule);
		}
	}

	@Override
	public void generateAndRun() {
		testOperations();
		increaseUnsatCore();
	}

	private void increaseUnsatCore() {
		long time = System.currentTimeMillis();

		System.out.println("\nStep 2: larger unsat core & redundancy introduction");

		for (int i = 0; i < rewritingRules.size(); i++) {

			RewritingRule rule = rewritingRules.get(i);
			if (rule.getEquivalentFormulas().isEmpty()) {
				// primitive operation, skip
				continue;
			}
			String ruleName = rule.getName();

			if (!justGenerate) {
				if (!useTriggers) {
					readPreviousTests(largerUnsatCore + "/" + ruleName);
					readPreviousTests(redundant + "/" + ruleName);
				} else {
					readPreviousTests(largerUnsatCoreTriggers + "/" + ruleName);
					readPreviousTests(redundantTriggers + "/" + ruleName);
				}
			}

			Operation operation = rule.getOperation();
			List<SMTConstructedObject> allSymbolicArguments = rule.getAllSymbolicArgumentsFromEquivalentFormula();
			List<SMTConstructedObject> allConstantArguments = rule.getAllConstantArgumentsFromEquivalentFormula();

			List<SMTConstructedObject> allArguments = allSymbolicArguments;
			allArguments.addAll(allConstantArguments);

			for (int argumentsCounter = 0; argumentsCounter < allArguments.size(); argumentsCounter++) {
				SMTConstructedObject arg = allArguments.get(argumentsCounter);
				boolean quantifiedVariable = false;
				SMTElement enclosingElement = arg.getEnclosingElement();
				Forall forall = null;

				if (enclosingElement instanceof Forall) {
					quantifiedVariable = true;
					forall = (Forall) enclosingElement;
				}

				boolean isConstant = arg.isConstant();

				String oldName = arg.getName();
				SMTConstructedObject copy = arg.copy();

				arg.setName(oldName + "_" + fresh);

				if (isConstant) {
					String oldValue = arg.getValue();
					arg.setWitness(oldValue);
				}

				boolean relevantForUnsatCore = arg.isRelevantForUnsatCore();

				List<TrivialEquality> trivialEqualities = getTrivialEqualities(arg, copy, quantifiedVariable);
				arg.setIsConstant(false);

				for (int equalitiesCounter = 0; equalitiesCounter < trivialEqualities.size(); equalitiesCounter++) {
					TrivialEquality trivialEquality = trivialEqualities.get(equalitiesCounter);
					String testName = time + "_" + ruleName + "_";

					if (relevantForUnsatCore) {
						// the size of the unsat core increased by 1 by including the trivial equality
						if (!useTriggers) {
							testName += largerUnsatCore + "_" + 3 + "_" + argumentsCounter + "_" + equalitiesCounter;
						} else {
							testName += largerUnsatCoreTriggers + "_" + 3 + "_" + argumentsCounter + "_"
									+ equalitiesCounter;
						}
					} else {
						// the size of the minimal unsat core is 2
						if (!useTriggers) {
							testName += redundant + "_" + 2 + "_" + argumentsCounter + "_" + equalitiesCounter;
						} else {
							testName += redundantTriggers + "_" + 2 + "_" + argumentsCounter + "_" + equalitiesCounter;
						}
					}
					String fileName = prefix + testName + suffix;
					Not negation = new Not(operation);
					Map<SMTElement, Boolean> updatedEquivalentFormulasMap;

					if (quantifiedVariable) {
						forall.update(trivialEquality);
						updatedEquivalentFormulasMap = rule.getDeepCopiedEquivalentFormulasMap();
					} else {
						updatedEquivalentFormulasMap = rule.getCopiedEquivalentFormulasMap();
						updatedEquivalentFormulasMap.put(trivialEquality.getEquality(), relevantForUnsatCore);
					}
					RewritingRule updatedRule = new RewritingRule(ruleName, negation, updatedEquivalentFormulasMap);
					if (!alreadyPassedRule(updatedRule) && !alreadyFailedRule(updatedRule)) {
						createTestFileAndRunTest(fileName, updatedRule);
					}
					if (quantifiedVariable) {
						forall.reset(trivialEquality);
					}
				}
				arg.setName(oldName);
				if (isConstant) {
					arg.setIsConstant(true);
				}
			}
		}
	}

	private List<TrivialEquality> getTrivialEqualities(SMTConstructedObject arg, SMTConstructedObject copy,
			boolean quantifiedVariable) {
		boolean isConstant = arg.isConstant();
		if (arg instanceof SMTString && isConstant) {
			return SMTStringsFactory.generateTrivialEqualitiesForConstantElement((SMTString) arg);
		}
		if (arg instanceof SMTString && !isConstant) {
			return SMTStringsFactory.generateTrivialEqualitiesForAbstractElement((SMTString) copy, (SMTString) arg,
					quantifiedVariable);
		}
		if (arg instanceof SMTInt && isConstant) {
			return SMTIntsFactory.generateTrivialEqualitiesForConstantElement((SMTInt) arg);
		}
		if (arg instanceof SMTInt && !isConstant) {
			return SMTIntsFactory.generateTrivialEqualitiesForAbstractElement((SMTInt) copy, (SMTInt) arg,
					quantifiedVariable);
		}
		if (arg instanceof SMTBool && isConstant) {
			return SMTBoolsFactory.generateTrivialEqualitiesForConstantElement((SMTBool) arg);
		}
		return null;
	}

	@Override
	public RewritingRule readFromSMTfile(File smtFile) {
		RewritingRule rewritingRule = null;
		Map<SMTElement, Boolean> equivalentFormulasMap = new HashMap<SMTElement, Boolean>();
		try {
			Map<String, String> variablesToValues = new HashMap<String, String>();
			List<String> assertions = new ArrayList<String>();

			BoolExpr smtExpr = SMTParserUtils.getSMTExpressionFromFile(smtFile, variablesToValues, assertions, ctx);
			List<String> unsatCore = getUnsatCoreFromFile(smtFile);

			if (smtExpr.isAnd()) { // should be always true
				Expr[] formulas = smtExpr.getArgs();
				int size = formulas.length;
				Expr notFormula = formulas[size - 1]; // the last one is the operation itself
				if (notFormula.isNot()) { // should be always true
					Expr testedFormula = notFormula.getArgs()[0].getArgs()[0]; // to remove the equality around the
																				// operation
					Expr result = notFormula.getArgs()[0].getArgs()[1];
					Operation operation = SMTParserUtils.reconstructOperation(variablesToValues, testedFormula,
							new ArrayList<SMTConstructedObject>());

					SMTConstructedObject operationResult = SMTParserUtils.reconstructResult(variablesToValues, result,
							new ArrayList<SMTConstructedObject>());
					operation.setResult(operationResult);
					operation.assignNamesToArguments();

					for (int i = 0; i < size - 1; i++) {
						Expr equivalentExpr = formulas[i];
						SMTElement equivalentFormula = SMTParserUtils.reconstructEquivalentFormula(variablesToValues,
								equivalentExpr, new ArrayList<SMTConstructedObject>());
						String name = assertions.get(i);
						equivalentFormulasMap.put(equivalentFormula, unsatCore.contains(name));
					}
					Operation notOperation = new Not(operation);
					rewritingRule = new RewritingRule(null, notOperation, equivalentFormulasMap);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return rewritingRule;
	}

	public List<String> getUnsatCoreFromFile(File smtFile) throws IOException {
		List<String> unsatCore = new ArrayList<String>();
		String encoding = null;
		String smtFileContent = FileUtils.readFileToString(smtFile, encoding);
		String[] lines = smtFileContent.split("\n");
		for (String line : lines) {
			if (line.startsWith(";unsat core:")) {
				line = line.replace(";unsat core: ", "");
				String[] assertions = line.split(" ");
				unsatCore = Arrays.asList(assertions);
				return unsatCore;
			}
		}
		return unsatCore;
	}
}
