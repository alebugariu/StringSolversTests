/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings;

import java.util.HashMap;
import java.util.Map;

import runner.Status;

public class Transformation {

	private String name;
	private Map<Status, Integer> failedTests;
	private int numberOfFailedTests = 0;
	private int numberOfPassedTests = 0;

	public Transformation(String name) {
		this.name = name;
		failedTests = new HashMap<Status, Integer>();
	}

	public String getName() {
		return name;
	}

	public void recordPassedTest() {
		numberOfPassedTests++;
	}

	public void recordFailedTest(Status actualStatus) {
		Integer value = failedTests.get(actualStatus);
		if (value == null) {
			failedTests.put(actualStatus, 1);
		} else {
			failedTests.put(actualStatus, value + 1);
		}
		numberOfFailedTests++;
	}

	@Override
	public String toString() {
		String statistics = "Transformation: " + name + "\n";
		int totalNumberOfTests = numberOfFailedTests + numberOfPassedTests;
		statistics += "	Number of generated tests: " + totalNumberOfTests + "\n";
		statistics += "	Number of passed tests: " + numberOfPassedTests + "\n";
		statistics += "	Number of failed tests: " + numberOfFailedTests + "\n";
		for (Status status : failedTests.keySet()) {
			statistics += "			" + status.name() + ": " + failedTests.get(status) + "\n";
		}
		return statistics;
	}
}
