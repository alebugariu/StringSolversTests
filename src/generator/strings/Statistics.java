/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings;

import java.util.ArrayList;
import java.util.List;

import runner.Status;

public class Statistics {

	private String smtSolver;
	private Status expectedStatus;
	private List<Transformation> transformations;

	private int totalNumberOfPassedTests = 0;
	private int totalNumberOfFailedTests = 0;

	public Statistics(String smtSolver, Status expectedStatus) {
		this.smtSolver = smtSolver;
		this.expectedStatus = expectedStatus;
		this.transformations = new ArrayList<Transformation>();
	}

	@Override
	public String toString() {
		String statistics = "Statistics for " + smtSolver + " for the " + expectedStatus + " case:\n";
		int totalNumberOfTests = totalNumberOfFailedTests + totalNumberOfPassedTests;
		statistics += "Number of generated tests: " + totalNumberOfTests + "\n";
		statistics += "Number of passed tests: " + totalNumberOfPassedTests + "\n";
		statistics += "Number of failed tests: " + totalNumberOfFailedTests + "\n";
		for (Transformation transformation : transformations) {
			statistics += transformation;
		}
		return statistics;
	}

	public void recordPassedTest(String transformationName) {
		Transformation transformation = getTransformationWithName(transformationName);
		transformation.recordPassedTest();
		totalNumberOfPassedTests++;
	}

	public void recordFailedTest(String transformationName, Status actualStatus) {
		Transformation transformation = getTransformationWithName(transformationName);
		transformation.recordFailedTest(actualStatus);
		totalNumberOfFailedTests++;
	}

	private Transformation getTransformationWithName(String transformationName) {
		int index = transformationName.indexOf("/");
		if (index != -1) {
			transformationName = transformationName.substring(0, index);
		}
		Transformation foundTransformation = null;
		for (Transformation transformation : transformations) {
			if (transformation.getName().equals(transformationName)) {
				foundTransformation = transformation;
				break;
			}
		}
		if (foundTransformation == null) {
			foundTransformation = new Transformation(transformationName);
			transformations.add(foundTransformation);
		}
		return foundTransformation;
	}

}
