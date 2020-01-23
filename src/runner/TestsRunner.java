/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package runner;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import generator.operations.Operation;
import generator.strings.SMTFile;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.generator.SatExpressionsGenerator;
import generator.strings.generator.UnsatExpressionsGenerator;
import generator.strings.types.SMTConstructedObject;
import generator.strings.utils.SMTStringUtils;

public class TestsRunner {

	private String fullPathSMTSolver;
	private String smtSolver;
	private String commandLineArguments;

	private final String folderFailingTests = "failingTests/";
	private final String folderPassingTests = "passingTests/";
	private final String folderSeed;
	private final String expected = "expected";

	public TestsRunner(String smtSolver, String commandLineArguments, int randomSeed) {
		this.fullPathSMTSolver = smtSolver;

		if (smtSolver.contains("/")) {
			this.smtSolver = fullPathSMTSolver.substring(fullPathSMTSolver.lastIndexOf("/") + 1);
		} else {
			this.smtSolver = fullPathSMTSolver;
		}

		this.commandLineArguments = commandLineArguments;
		this.folderSeed = "seed" + randomSeed + "/";
	}

	public String getSmtSolver() {
		return smtSolver;
	}

	public String getFullPathSmtSolver() {
		return fullPathSMTSolver;
	}

	public String getFailingTestsFolder(Status expectedStatus, Status actualStatus) {
		return folderName(folderFailingTests, expectedStatus) + "/" + SMTStringUtils.extractVersion(fullPathSMTSolver)
				+ "/" + actualStatus.name() + "/" + folderSeed;
	}

	public String getPassingTestsFolder(Status expectedStatus) {
		String folderName = folderName(folderPassingTests, expectedStatus);
		return folderName + "/" + SMTStringUtils.extractVersion(fullPathSMTSolver) + "/" + folderSeed;
	}

	private String folderName(String folderName, Status expectedStatus) {
		String expectedStatusName = expectedStatus.name();
		return folderName + expected + "_" + expectedStatusName + "/" + smtSolver;
	}

	private Map<String, List<String>> readModel(String testOutput) {
		// variable name -> {type, value}
		Map<String, List<String>> variablesToValues = new HashMap<String, List<String>>();
		testOutput = testOutput.replaceAll("\n", "");
		if (testOutput.isEmpty()) {
			return variablesToValues;
		}
		testOutput = testOutput.substring(1, testOutput.length() - 1); // remove the enclosing ()
		testOutput = testOutput.replaceAll(" +", " ");

		String type;
		String variable;
		String value;
		String[] definitions = testOutput.split("\\) \\(");

		for (String definition : definitions) {

			int firstIndexOfSpace = definition.indexOf(" ");
			variable = definition.substring(0, firstIndexOfSpace);
			if (variable.startsWith("(")) {
				variable = variable.substring(1, variable.length());
			}

			value = definition.substring(firstIndexOfSpace + 1);
			if (value.startsWith("(") && value.endsWith(")")) {
				value = value.substring(1, value.length() - 1);
			}
			if (value.endsWith(")")) { // last definition
				value = value.substring(0, value.length() - 1);
			}
			if (value.startsWith("\"") && value.endsWith("\"")) {
				value = value.substring(1, value.length() - 1);
				// " is the escape character for "
				// value = value.replaceAll("\"\"", "\"");
				type = "String";
			} else if (value.equals("true") || value.equals("false")) {
				type = "Bool";
			} else {
				type = "Int";
				// remove spaces
				value = value.replaceAll(" ", "");
			}
			List<String> attributes = new ArrayList<String>();
			attributes.add(type);
			attributes.add(value);
			variablesToValues.put(variable, attributes);
		}
		return variablesToValues;
	}

	private List<String> readUnsatCore(String testOutput) {
		testOutput = testOutput.replaceAll("\n", " ");
		testOutput = testOutput.replaceAll("\\(", ""); // remove the enclosing ()
		testOutput = testOutput.replaceAll("\\)", ""); // remove the enclosing ()

		List<String> unsatCore = new ArrayList<String>();
		String[] assertions = testOutput.split(" ");
		for (String anAssertion : assertions) {
			if (!anAssertion.isEmpty()) {
				unsatCore.add(anAssertion);
			}
		}
		return unsatCore;
	}

	public Status run(SMTFile smtFile, Status expectedStatus) {
		Runtime runtime = Runtime.getRuntime();
		String fileName = smtFile.getName();
		File file = new File(fileName);
		Process process;
		try {
			String solver = fullPathSMTSolver;
			if (solver.contains("z3")) {
				solver = solver.substring(0, solver.lastIndexOf("/")) + "/" + "z3"; // to remove _seq or _z3str3 for z3
			}
			process = runtime.exec(solver + commandLineArguments + " " + file.getPath());
			BufferedReader stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));
			BufferedReader stdError = new BufferedReader(new InputStreamReader(process.getErrorStream()));

			// read the output from the command
			String output = "";
			String line = null;
			while ((line = stdInput.readLine()) != null) {
				output += line + "\n";
			}
			// clean the output
			output = output.replaceAll("\\(:reason-unknown \"\"\\)", "");
			output = output.replaceAll("\\(:reason-unknown \"unknown\"\\)", "");
			output = output.replaceAll(
					"\\(error \"Can't get-info :reason-unknown when the last result wasn't unknown!\"\\)", "");
			output = output.replaceAll(
					"\\(error \"Cannot get value unless immediately preceded by SAT/INVALID or UNKNOWN response.\"\\)",
					"");
			output = output.replaceAll("\\(error \"line \\d+ column \\d+: model is not available\"\\)", "");
			output = output.replaceAll("\\(error \"line \\d+ column \\d+: unsat core is not available\"\\)", "");

			// read any errors from the attempted command
			String error = "";
			line = null;
			while ((line = stdError.readLine()) != null) {
				error += line + "\n";
			}
			String smtTestFileName = fileName.substring(fileName.lastIndexOf("/") + 1);
			PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(fileName, true)));

			Status actualStatus = Status.getStatus(output);
			if (!expectedStatus.equals(actualStatus)) {
				System.out.print(smtSolver + " File: " + fileName + " " + expected + ": " + expectedStatus
						+ " but found: " + actualStatus);
				if (!error.isEmpty()) {
					System.out.println(" error message: " + error);
				} else {
					System.out.println();
				}
				System.out.println(
						"*********************************************************************************************");
				System.out.println();

				out.println(AbstractExpressionsGenerator.actualStatus + actualStatus);
				String[] lines = output.split("\n");
				for (int index = 1; index < lines.length; index++) {
					if (!lines[index].isEmpty()) {
						out.println(";" + lines[index]);
					}
				}
				out.close();
				if (actualStatus == null) {
					actualStatus = Status.error;
				}

				if (actualStatus == Status.unknown && output.contains(Status.timeout.name())) {
					actualStatus = Status.timeout;
				}

				moveFileToResultsFolder(expectedStatus, actualStatus, file, smtTestFileName, false);
				return actualStatus;
			}
			if (actualStatus == Status.sat) {
				output = output.replace("sat", "");
				Map<String, List<String>> model = readModel(output);
				if (!model.isEmpty()) {
					addModelToFile(out, model);
					// check if the model is correct
					if (correctModel(smtFile.getOperation(), model)) {
						moveFileToResultsFolder(expectedStatus, actualStatus, file, smtTestFileName, true);
						return actualStatus;
					}
					System.out.println(smtSolver + " File: " + fileName + " incorrect model!");
					System.out.println();
					System.out.println(
							"*********************************************************************************************");
					System.out.println();
					actualStatus = Status.incorrect_model;
					moveFileToResultsFolder(expectedStatus, actualStatus, file, smtTestFileName, false);
					return actualStatus;
				}
				out.close();
				moveFileToResultsFolder(expectedStatus, actualStatus, file, smtTestFileName, true);
				// an empty model is trivially sat
				return actualStatus;
			}

			if (actualStatus == Status.unsat) {
				// check if the unsat core is correct/minimum
				output = output.replace("unsat", "");
				List<String> actualUnsatCore = readUnsatCore(output);
				addAbstractCoreToFile(out, actualUnsatCore);
				List<String> expectedUnsatCore = smtFile.getUnsatCore();
				if (!correctUnsatCore(actualUnsatCore, expectedUnsatCore)) {
					System.out.println(smtSolver + " File: " + fileName + " incorrect unsat core!");
					System.out.println();
					System.out.println(
							"*********************************************************************************************");
					System.out.println();
					actualStatus = Status.incorrect_unsat_core;
					moveFileToResultsFolder(expectedStatus, actualStatus, file, smtTestFileName, false);
					out.close();
					return actualStatus;
				}
			}
			out.close();
			moveFileToResultsFolder(expectedStatus, actualStatus, file, smtTestFileName, true);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return expectedStatus;
	}

	private void addAbstractCoreToFile(PrintWriter out, List<String> actualUnsatCore) {
		out.print(";actual unsat core: ");
		for (String assertionName : actualUnsatCore) {
			out.print(assertionName + " ");
		}
		out.println();
	}

	private void addModelToFile(PrintWriter out, Map<String, List<String>> model) {
		out.println("\n" + AbstractExpressionsGenerator.model);
		for (String variable : model.keySet()) {
			List<String> attributes = model.get(variable);
			out.println(";" + attributes.get(0) + " " + variable + " = " + attributes.get(1));
		}
		out.close();
	}

	public Status runExistingFile(String fileName, String toolFolderName, Status expectedStatus, boolean checkResult) {
		Runtime runtime = Runtime.getRuntime();
		File file = new File(fileName);
		String[] names = fileName.split("/");
		int length = names.length;
		String smtTestFileName = names[length - 1];

		if (!toolFolderName.equals("generatedTests")) {
			// not our test suite
			smtTestFileName = names[length - 2] + "/" + smtTestFileName;
		}

		Process process;
		try {
			String solver = fullPathSMTSolver;
			if (solver.contains("z3")) {
				solver = solver.substring(0, solver.lastIndexOf("/")) + "/" + "z3"; // to remove _seq or _z3str3 for z3
			}
			process = runtime.exec(solver + commandLineArguments + " " + file.getPath());
			BufferedReader stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));
			BufferedReader stdError = new BufferedReader(new InputStreamReader(process.getErrorStream()));

			// read the output from the command
			String output = "";
			String line = null;
			while ((line = stdInput.readLine()) != null) {
				output += line + "\n";
			}

			// clean the output
			output = output.replaceAll("\\(:reason-unknown \"\"\\)", "");
			output = output.replaceAll("\\(:reason-unknown \"unknown\"\\)", "");
			output = output.replaceAll(
					"\\(error \"Can't get-info :reason-unknown when the last result wasn't unknown!\"\\)", "");
			output = output.replaceAll(
					"\\(error \"Cannot get value unless immediately preceded by SAT/INVALID or UNKNOWN response.\"\\)",
					"");
			output = output.replaceAll("\\(error \"line \\d+ column \\d+: model is not available\"\\)", "");
			output = output.replaceAll("\\(error \"line \\d+ column \\d+: unsat core is not available\"\\)", "");

			// read any errors from the attempted command
			String error = "";
			line = null;
			while ((line = stdError.readLine()) != null) {
				error += line + "\n";
			}

			Status actualStatus = Status.getStatus(output);
			if (!expectedStatus.equals(actualStatus)) {
				System.out.print(smtSolver + " File: " + smtTestFileName + " " + expected + ": " + expectedStatus
						+ " but found: " + actualStatus);
				if (!error.isEmpty()) {
					System.out.println(" error message: " + error);
				} else {
					System.out.println();
				}
				System.out.println(
						"*********************************************************************************************");
				System.out.println();

				if (actualStatus == null) {
					actualStatus = Status.error;
				}

				if (actualStatus == Status.unknown && output.contains(Status.timeout.name())) {
					actualStatus = Status.timeout;
				}
				copyFileToResultsFolder(expectedStatus, actualStatus, output, file, smtTestFileName, toolFolderName,
						false);
				return actualStatus;
			}
			if (checkResult) {
				if (actualStatus == Status.sat) {
					output = output.replace("sat", "");
					Map<String, List<String>> model = readModel(output);
					if (!testableModel(model)) {
						actualStatus = Status.big_model;
						String resultFileName = copyFileToResultsFolder(expectedStatus, actualStatus, output, file,
								smtTestFileName, toolFolderName, false);
						addModelToFile(new PrintWriter(new BufferedWriter(new FileWriter(resultFileName, true))),
								model);
						return actualStatus;
					}
					SatExpressionsGenerator satGenerator = new SatExpressionsGenerator();
					RewritingRule rule = satGenerator.readFromSMTfile(file);

					if (!model.isEmpty()) {
						// check if the model is correct
						if (correctModel(rule.getOperation(), model)) {
							String resultFileName = copyFileToResultsFolder(expectedStatus, actualStatus, output, file,
									smtTestFileName, toolFolderName, true);
							addModelToFile(new PrintWriter(new BufferedWriter(new FileWriter(resultFileName, true))),
									model);
							return actualStatus;
						}
						System.out.println(smtSolver + " File: " + smtTestFileName + " incorrect model!");
						System.out.println();
						System.out.println(
								"*********************************************************************************************");
						System.out.println();
						actualStatus = Status.incorrect_model;
						String resultFileName = copyFileToResultsFolder(expectedStatus, actualStatus, output, file,
								smtTestFileName, toolFolderName, false);
						addModelToFile(new PrintWriter(new BufferedWriter(new FileWriter(resultFileName, true))),
								model);
						return actualStatus;
					}
					copyFileToResultsFolder(expectedStatus, actualStatus, null, file, smtTestFileName, toolFolderName,
							true);
					// an empty model is trivially sat
					return actualStatus;
				}

				if (actualStatus == Status.unsat) {
					// check if the unsat core is correct/minimum
					output = output.replace("unsat", "");
					// z3-seq may give spurious errors
					output = output.replaceAll("\\(:reason-unknown \"\\(incomplete \\(theory seq\\)\\)\"\\)", "");
					List<String> actualUnsatCore = readUnsatCore(output);

					UnsatExpressionsGenerator unsatGenerator = new UnsatExpressionsGenerator();
					List<String> expectedUnsatCore = unsatGenerator.getUnsatCoreFromFile(file);

					if (!correctUnsatCore(actualUnsatCore, expectedUnsatCore)) {
						System.out.println(smtSolver + " File: " + smtTestFileName + " incorrect unsat core!");
						System.out.println();
						System.out.println(
								"*********************************************************************************************");
						System.out.println();
						actualStatus = Status.incorrect_unsat_core;
						String resultFileName = copyFileToResultsFolder(expectedStatus, actualStatus, output, file,
								smtTestFileName, toolFolderName, false);
						addAbstractCoreToFile(new PrintWriter(new BufferedWriter(new FileWriter(resultFileName, true))),
								actualUnsatCore);
						return actualStatus;
					}
				}
			}
			System.out.println(smtSolver + " File: " + smtTestFileName + " test passed");
			copyFileToResultsFolder(expectedStatus, actualStatus, null, file, smtTestFileName, toolFolderName, true);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return expectedStatus;
	}

	public Status runExistingABCFile(String fileName, String toolFolderName, Status expectedStatus) {
		Runtime runtime = Runtime.getRuntime();
		File file = new File(fileName);
		String[] names = fileName.split("/");
		int length = names.length;
		String smtTestFileName = names[length - 1];

		Process process;
		try {
			String solver = fullPathSMTSolver;

			process = runtime.exec(solver + commandLineArguments + " " + file.getPath());
			BufferedReader stdError = new BufferedReader(new InputStreamReader(process.getErrorStream()));

			// ABC's output is written to stdErr
			String error = "";
			String line = null;
			String statusLine = "";
			while ((line = stdError.readLine()) != null) {
				int index = line.indexOf("report is_sat: ");
				if (index != -1) {
					// the formula was solved, the result is sat or unsat
					index = index + "report is_sat: ".length();
					statusLine = line.substring(index).toLowerCase();
				}
				error += line + "\n";
			}

			Status actualStatus = Status.getStatus(statusLine);
			if (!expectedStatus.equals(actualStatus)) {
				System.out.print(smtSolver + " File: " + smtTestFileName + " " + expected + ": " + expectedStatus
						+ " but found: " + actualStatus);
				if (!error.isEmpty()) {
					System.out.println(" error message: " + error);
				} else {
					System.out.println();
				}
				System.out.println(
						"*********************************************************************************************");
				System.out.println();

				if (actualStatus == null) {
					actualStatus = Status.error;
				}

				copyFileToResultsFolder(expectedStatus, actualStatus, error, file, smtTestFileName, toolFolderName,
						false);
				return actualStatus;
			}
			System.out.println(smtSolver + " File: " + smtTestFileName + " test passed");
			copyFileToResultsFolder(expectedStatus, actualStatus, null, file, smtTestFileName, toolFolderName, true);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return expectedStatus;
	}

	private boolean testableModel(Map<String, List<String>> model) {
		for (String variable : model.keySet()) {
			List<String> attributes = model.get(variable);
			String value = attributes.get(1);
			if (StringUtils.isNumeric(value) || (value.startsWith("-") && StringUtils.isNumeric(value.substring(1)))) {
				try {
					Integer.parseInt(value);
				} catch (NumberFormatException e) {
					return false;
				}
			}
		}
		return true;

	}

	private boolean correctUnsatCore(List<String> actualUnsatCore, List<String> expectedUnsatCore) {
		if (actualUnsatCore.size() != expectedUnsatCore.size()) {
			return false;
		}
		for (int index = 0; index < expectedUnsatCore.size(); index++) {
			if (!actualUnsatCore.contains(expectedUnsatCore.get(index))) {
				return false;
			}

		}
		return true;
	}

	private boolean correctModel(Operation checkedOperation, Map<String, List<String>> model) {
		Operation operation = checkedOperation.copy();
		SMTConstructedObject actualResult = operation.getResult();

		List<SMTConstructedObject> allArguments = operation.getAllArguments();
		for (String name : model.keySet()) {
			List<String> attributes = model.get(name);
			String type = attributes.get(0);
			String value = attributes.get(1);
			if (type.equals("String")) {
				// handle special characters
				value = value.replace("\\b", "\b");
				value = value.replace("\\f", "\f");
				value = value.replace("\\n", "\n");
				value = value.replace("\\r", "\r");
				value = value.replace("\\t", "\t");
			}
			for (SMTConstructedObject arg : SMTStringUtils.getArgumentsWithName(allArguments, name)) {
				if (arg.equals(actualResult)) {
					value = SMTStringUtils.withoutSpecialCharacters(value);
				}
				arg.setValue(value);
				arg.setIsConstant(true);
			}
		}

		Operation history = actualResult.getHistory();
		if (history != null && !history.equals(operation)) { // the result is actually an operation that was not yet
																// evaluated
			actualResult = history.apply();
		}
		String actualValue = actualResult.getValue();
		assert (!actualValue.equals(AbstractExpressionsGenerator.unconstrained));

		SMTConstructedObject computedResult = operation.apply();
		String computedValue = computedResult.getValue();
		return actualValue.equals(computedValue);
	}

	private String constructNamePrefix(Status expectedStatus, Status actualStatus, String smtTestFileName,
			boolean passedTest) {
		if (!smtTestFileName.contains("_")) {
			if (passedTest) {
				return getPassingTestsFolder(expectedStatus);
			}
			return getFailingTestsFolder(expectedStatus, actualStatus);
		}
		String[] splitName = smtTestFileName.split("_");
		String operationName = splitName[1];
		operationName = operationName.replaceAll(AbstractExpressionsGenerator.suffix, "");
		String transformationName = SMTStringUtils.extractTransformationName(smtTestFileName, expectedStatus);
		if (passedTest) {
			return getPassingTestsFolder(expectedStatus) + transformationName + "/" + operationName + "/";
		}
		return getFailingTestsFolder(expectedStatus, actualStatus) + transformationName + "/" + operationName + "/";
	}

	private void moveFileToResultsFolder(Status expectedStatus, Status actualStatus, File file, String smtTestFileName,
			boolean passedTest) {
		String namePrefix = constructNamePrefix(expectedStatus, actualStatus, smtTestFileName, passedTest);
		SMTStringUtils.moveFileToFolder(file, namePrefix, smtTestFileName);
	}

	private String copyFileToResultsFolder(Status expectedStatus, Status actualStatus, String output, File file,
			String smtTestFileName, String toolFolderName, boolean passedTest) {

		String namePrefix = constructNamePrefix(expectedStatus, actualStatus, smtTestFileName, passedTest);

		File to = new File(namePrefix + smtTestFileName);
		to.getParentFile().mkdirs();

		try {

			BufferedReader reader = new BufferedReader(new FileReader(file));
			PrintWriter writer = new PrintWriter(to);

			String currentLine;
			while ((currentLine = reader.readLine()) != null) {
				if (currentLine.startsWith(AbstractExpressionsGenerator.actualStatus)) {
					break;
				}
				writer.println(currentLine);
			}
			writer.println(AbstractExpressionsGenerator.actualStatus + actualStatus);
			// add additional info to file
			if (output != null) {
				String[] lines = output.split("\n");
				for (int index = 1; index < lines.length; index++) {
					if (!lines[index].isEmpty()) {
						writer.println(";" + lines[index]);
					}
				}
			}
			writer.close();
			reader.close();
			return to.getPath();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	public void addPatternToFile(String fileName, Status expectedStatus, Status actualStatus, RewritingRule pattern) {
		String smtTestFileName = fileName.substring(fileName.lastIndexOf("/") + 1);
		String name = constructNamePrefix(expectedStatus, actualStatus, smtTestFileName, false) + smtTestFileName;
		try {
			PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(name, true)));
			String[] patternLines = pattern.toString().split("\n");
			out.println("\n;pattern:");
			for (String line : patternLines) {
				out.println(";" + line);
			}
			out.println();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
