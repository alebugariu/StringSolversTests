/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings.generator;

import runner.Status;

public abstract class RulesBasedExpressionsGenerator extends AbstractExpressionsGenerator {

	protected RulesBasedExpressionsGenerator(int randomSeed) {
		super(randomSeed);
	}

	// explicit no-arg constructor
	public RulesBasedExpressionsGenerator() {
	}

	public void generate() {
		this.justGenerate = true;
		generateAndRunTests();
	}

	public void generateAndRunTests() {
		generateAndRun();
		if (!justGenerate) {
			printStatistics();
		}
	}

	protected abstract void generateAndRun();

	protected void testOperations() {
		long time = System.currentTimeMillis();

		if (expectedStatus == Status.sat) {
			System.out.println("\nSAT formulas");
			System.out.println("Step 1: operations");
		} else {
			String triggersInfo = useTriggers ? "with triggers" : "without triggers";
			System.out.println("\nUNSAT formulas " + triggersInfo);
			System.out.println("Step 1: equivalent formulas");
		}

		for (int i = 0; i < rewritingRules.size(); i++) {

			RewritingRule aRule = rewritingRules.get(i);
			String ruleName = aRule.getName();

			if (!justGenerate) {
				if (expectedStatus == Status.sat) {
					readPreviousTests(operation + "/" + ruleName);
				} else if (!useTriggers) {
					readPreviousTests(equivalentFormula + "/" + ruleName);
				} else {
					readPreviousTests(equivalentFormulaTriggers + "/" + ruleName);
				}
			}

			String testName = time + "_" + ruleName;
			if (useTriggers && expectedStatus == Status.unsat) {
				testName += "_" + triggers;
			}
			String fileName = prefix + testName + suffix;

			extractOperationAndRunTest(aRule, fileName);
		}
	}

	protected abstract void extractOperationAndRunTest(RewritingRule rule, String fileName);
}
