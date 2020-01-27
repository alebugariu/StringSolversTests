/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package runner;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.DefaultParser;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;
import org.apache.commons.io.FileUtils;

import generator.strings.Statistics;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RulesBasedExpressionsGenerator;
import generator.strings.generator.SatExpressionsGenerator;
import generator.strings.generator.UnsatExpressionsGenerator;
import generator.strings.utils.SMTParserUtils;
import generator.strings.utils.SMTStringUtils;

public class Main {

	private static String z3_seq_471;
	private static String z3_str3_471;
	private static String cvc4_16;

	private static String z3_seq_486;
	private static String z3_str3_486;
	private static String cvc4_17;

	private static void printStatistics(Statistics statistics, String smtSolver, Status expectedStatus) {
		long time = System.currentTimeMillis();
		String fileName = "statistics" + time + "_" + smtSolver + "_" + expectedStatus;
		if (expectedStatus == Status.unsat && AbstractExpressionsGenerator.useTriggers) {
			fileName += "_triggers";
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

	private static void testWithExistingInputs(boolean latestVersion, int randomSeed, int timeout, String testsFolder,
			String extension, boolean checkResult) {

		// for the stringFuzz test suite, checkResult == false

		String z3_seq;
		String z3_str3;
		String cvc4;

		if (latestVersion) {
			z3_seq = z3_seq_486;
			z3_str3 = z3_str3_486;
			cvc4 = cvc4_17;
		} else {
			z3_seq = z3_seq_471;
			z3_str3 = z3_str3_471;
			cvc4 = cvc4_16;
		}

		TestsRunner z3SeqRunner = createZ3seqRunner(randomSeed, timeout, z3_seq);
		TestsRunner z3Str3Runner = createZ3str3Runner(randomSeed, timeout, z3_str3);
		TestsRunner cvc4Runner = createCVC4Runner(randomSeed, timeout, cvc4);

		List<TestsRunner> testRunners = new ArrayList<TestsRunner>();
		testRunners.add(z3SeqRunner);
		testRunners.add(z3Str3Runner);
		testRunners.add(cvc4Runner);

		List<Status> expectedStatusList = new ArrayList<Status>();
		expectedStatusList.add(Status.sat);
		expectedStatusList.add(Status.unsat);

		for (TestsRunner runner : testRunners) {
			for (Status expectedStatus : expectedStatusList) {
				if (expectedStatus == Status.sat) {
					// test sat formulas
					testForStatus(latestVersion, randomSeed, testsFolder, extension, checkResult, runner,
							expectedStatus);
				} else {
					AbstractExpressionsGenerator.useTriggers = false;
					// test unsat formulas without triggers
					testForStatus(latestVersion, randomSeed, testsFolder, extension, checkResult, runner,
							expectedStatus);

					if (checkResult) {
						// stringFuzz does not have formulas with triggers
						AbstractExpressionsGenerator.useTriggers = true;
						// test unsat formulas with triggers
						testForStatus(latestVersion, randomSeed, testsFolder, extension, checkResult, runner,
								expectedStatus);
					}
				}
			}
		}
	}

	private static TestsRunner createCVC4Runner(int randomSeed, int timeout, String cvc4) {
		return new TestsRunner(cvc4, " --strings-exp --full-saturate-quant --lang=smt2 --tlimit " + timeout * 1000
				+ "--random-seed=" + randomSeed, randomSeed);
	}

	private static TestsRunner createZ3str3Runner(int randomSeed, int timeout, String z3_str3) {
		return new TestsRunner(z3_str3, " smt.core.minimize=true smt.string_solver=z3str3 sat.random_seed=" + randomSeed
				+ " smt.random_seed=" + randomSeed + " -T:" + timeout, randomSeed);
	}

	private static TestsRunner createZ3seqRunner(int randomSeed, int timeout, String z3_seq) {
		return new TestsRunner(z3_seq, " smt.core.minimize=true smt.string_solver=seq sat.random_seed=" + randomSeed
				+ " smt.random_seed=" + randomSeed + " -T:" + timeout, randomSeed);
	}

	private static void testForStatus(boolean latestVersion, int randomSeed, String testsFolder, String extension,
			boolean checkResult, TestsRunner runner, Status expectedStatus) {
		String smtSolver = runner.getSmtSolver();
		Map<Status, List<String>> alreadyFailedTests = SMTStringUtils.readFailingTests(runner, expectedStatus);
		List<String> alreadyPassedTests = SMTStringUtils.readTests(runner.getPassingTestsFolder(expectedStatus));

		Statistics statistics = new Statistics(smtSolver, expectedStatus);
		String folderName = testsFolder + "expected_" + expectedStatus.name();
		if (checkResult && latestVersion) {
			folderName += "/" + smtSolver;
		}

		File folder = new File(folderName);
		if (!folder.exists()) {
			printStatistics(statistics, smtSolver, expectedStatus);
			return;
		}
		Collection<File> files = FileUtils.listFiles(folder, new String[] { extension }, true);
		if (checkResult) {
			List<String> filteredVersions = new ArrayList<String>();
			filteredVersions.add(SMTStringUtils.extractVersion(runner.getFullPathSmtSolver()));
			if (latestVersion) {
				String otherVersion = SMTStringUtils.otherVersion(smtSolver);
				if (otherVersion != null) {
					filteredVersions.add(otherVersion);
				}
			}
			files = filterFiles(files, randomSeed, expectedStatus, filteredVersions);
		}
		for (File file : files) {
			try {
				String fileFullName = file.getCanonicalPath();
				String categoryName;
				String fileName;

				if (checkResult) {
					categoryName = file.getParentFile().getParentFile().getName();
				} else {
					categoryName = file.getParentFile().getName();
				}

				fileName = fileFullName.substring(fileFullName.lastIndexOf("/") + 1);
				if (alreadyPassedTests.contains(fileName)) {
					statistics.recordPassedTest(categoryName);
					continue;
				}

				Status actualStatus = SMTStringUtils.alreadyKnownStatus(alreadyFailedTests, fileName);
				if (actualStatus != null) {
					statistics.recordFailedTest(categoryName, actualStatus);
					continue;
				}

				actualStatus = runner.runExistingFile(file.getAbsolutePath(), testsFolder, expectedStatus, checkResult);
				if (actualStatus == expectedStatus) {
					statistics.recordPassedTest(categoryName);
				} else {
					statistics.recordFailedTest(categoryName, actualStatus);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		printStatistics(statistics, smtSolver, expectedStatus);
	}

	private static List<File> filterFiles(Collection<File> files, int randomSeed, Status expectedStatus,
			List<String> filteredVersions) {
		List<File> filteredFiles = new ArrayList<File>();
		for (File file : files) {
			try {
				String fileFullName = file.getCanonicalPath();
				if (!fileFullName.contains("seed" + randomSeed)) {
					continue;
				}
				if (!rightVersion(filteredVersions, fileFullName)) {
					continue;
				}
				if (expectedStatus == Status.unsat && !rightTriggersFile(fileFullName)) {
					continue;
				}
				filteredFiles.add(file);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return filteredFiles;
	}

	private static boolean rightVersion(List<String> filteredVersions, String fileName) {
		for (String filteredVersion : filteredVersions) {
			if (fileName.contains(filteredVersion)) {
				return false;
			}
		}
		return true;
	}

	private static boolean rightTriggersFile(String fileName) {
		if (AbstractExpressionsGenerator.useTriggers
				&& (fileName.contains("Triggers") || fileName.contains("triggers"))) {
			return true;
		}
		if (!AbstractExpressionsGenerator.useTriggers && !fileName.contains("Triggers")
				&& !fileName.contains("triggers")) {
			return true;
		}
		return false;
	}

	private static void generateABCTestSuite(int randomSeed, String testsFolder, String extension) {
		String[] supportedUnsatOperations = { "at", "replace", "substring", "contains", "prefixOf", "suffixOf" };
		List<String> supportedOperationsList = Arrays.asList(supportedUnsatOperations);

		List<Status> expectedStatusList = new ArrayList<Status>();
		expectedStatusList.add(Status.sat);
		expectedStatusList.add(Status.unsat);

		for (Status expectedStatus : expectedStatusList) {

			String folderName = testsFolder + "expected_" + expectedStatus.name();

			File folder = new File(folderName);
			Collection<File> files = FileUtils.listFiles(folder, new String[] { extension }, true);
			for (File file : files) {
				try {
					String fileFullName = file.getCanonicalPath();
					// triggers are not supported by ABC
					if (!fileFullName.contains("seed" + randomSeed) || fileFullName.contains("Triggers")
							|| fileFullName.contains("triggers")) {
						continue;
					}

					String fileName = file.getName();
					String operationName = fileName.split("_")[1];
					operationName = operationName.replaceAll(AbstractExpressionsGenerator.suffix, "");
					if (expectedStatus == Status.unsat && !supportedOperationsList.contains(operationName)) {
						continue;
					}
					SMTParserUtils.createABCFile(testsFolder, file);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		System.out.println("Successfully generated the ABC test suite in the folder abcTests");
	}

	private static void testABC(int randomSeed, String testsFolder, String extension) {

		TestsRunner abcRunner = new TestsRunner("abc", " -v 0 -i ", randomSeed);

		List<Status> expectedStatusList = new ArrayList<Status>();
		expectedStatusList.add(Status.sat);
		expectedStatusList.add(Status.unsat);

		for (Status expectedStatus : expectedStatusList) {
			String smtSolver = abcRunner.getSmtSolver();
			Map<Status, List<String>> alreadyFailedTests = SMTStringUtils.readFailingTests(abcRunner, expectedStatus);
			List<String> alreadyPassedTests = SMTStringUtils.readTests(abcRunner.getPassingTestsFolder(expectedStatus));

			Statistics statistics = new Statistics(smtSolver, expectedStatus);
			String folderName = testsFolder + "expected_" + expectedStatus.name();

			File folder = new File(folderName);
			Collection<File> files = FileUtils.listFiles(folder, new String[] { extension }, true);
			for (File file : files) {
				try {
					String fileFullName = file.getCanonicalPath();
					String categoryName = file.getParentFile().getParentFile().getName();

					String fileName = fileFullName.substring(fileFullName.lastIndexOf("/") + 1);

					if (alreadyPassedTests.contains(fileName)) {
						statistics.recordPassedTest(categoryName);
						continue;
					}

					Status actualStatus = SMTStringUtils.alreadyKnownStatus(alreadyFailedTests, fileName);
					if (actualStatus != null) {
						statistics.recordFailedTest(categoryName, actualStatus);
						continue;
					}

					actualStatus = abcRunner.runExistingABCFile(file.getAbsolutePath(), testsFolder, expectedStatus);
					if (actualStatus == expectedStatus) {
						statistics.recordPassedTest(categoryName);
					} else {
						statistics.recordFailedTest(categoryName, actualStatus);
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			printStatistics(statistics, smtSolver, expectedStatus);
		}
	}

	public static void main(String[] args) {
		Options options = new Options();

		Option generateOpt = new Option("gen", false, "generate our test suite");
		options.addOption(generateOpt);

		Option seedOpt = new Option("seed", true, "random seed [default 0]");
		options.addOption(seedOpt);

		Option timeoutOpt = new Option("timeout", true, "timeout(s) [default 15s]");
		options.addOption(timeoutOpt);

		Option testSMTOpt = new Option("testSMT", false,
				"test the three SMT solvers (Z3-seq, Z3-str3, CVC4) on our test suite");
		options.addOption(testSMTOpt);

		Option latestVersionOpt = new Option("latest", false,
				"use the version 4.8.6 for the Z3-based solvers and 1.7 for CVC4");
		options.addOption(latestVersionOpt);

		Option priorVersionOpt = new Option("prior", false,
				"use the version 4.7.1 for the Z3-based solvers and 1.6 for CVC4");
		options.addOption(priorVersionOpt);

		Option testStringFuzzOpt = new Option("testStringFuzz", false,
				"test the three SMT solvers (Z3-seq, Z3-str3, CVC4) versions 4.7.1 and 1.6 on the StringFuzz test suite");
		options.addOption(testStringFuzzOpt);

		Option generateABCOpt = new Option("genABC", false, "pre-process our test suite for MT-ABC");
		options.addOption(generateABCOpt);

		Option testABCOpt = new Option("testABC", false, "test MT-ABC on our (modified) test suite");
		options.addOption(testABCOpt);

		Option testSolverOpt = new Option("testSolver", true, "test an SMT solver (Z3-seq, Z3str3 or CVC4)");
		options.addOption(testSolverOpt);

		Option fileOpt = new Option("file", true, "absolut path to an smt file from our test suite");
		options.addOption(fileOpt);

		Option satOpt = new Option("sat", false, "consider only sat formulas");
		options.addOption(satOpt);

		Option unsatOpt = new Option("unsat", false, "consider only unsat formulas");
		options.addOption(unsatOpt);

		Option triggersOpt = new Option("triggers", false, "use triggers for the unsat formulas");
		options.addOption(triggersOpt);

		Option helpOpt = new Option("help", false, "print usage information");
		options.addOption(helpOpt);

		CommandLineParser parser = new DefaultParser();
		HelpFormatter formatter = new HelpFormatter();
		CommandLine cmd = null;

		try {
			cmd = parser.parse(options, args);
		} catch (ParseException e) {
			formatter.printHelp("string solvers tests", options);
			System.exit(1);
		}

		findSolversPaths();
		int randomSeed = 0; // default value
		if (cmd.hasOption("seed")) {
			randomSeed = Integer.parseInt(cmd.getOptionValue("seed"));
		}
		int timeout = 15; // default value
		if (cmd.hasOption("timeout")) {
			timeout = Integer.parseInt(cmd.getOptionValue("timeout"));
		}

		if (cmd.hasOption("gen")) {
			// -gen
			// generate our test suite
			generate(randomSeed);
			return;
		}
		if (cmd.hasOption("testSMT") && cmd.hasOption("prior")) {
			// -testSMT -prior
			// test the solvers versions from the paper on our test suite (4.7.1 for
			// Z3-based solvers and 1.6 for CVC4)
			testWithExistingInputs(false, randomSeed, timeout, "experiments/generatedTests/", "smt2", true);
			return;
		}
		if (cmd.hasOption("testSMT") && cmd.hasOption("latest")) {
			// -testSMT -latest
			// test the latest versions of the solvers on our test suite (4.8.6 for Z3-based
			// solvers and 1.7 for CVC4)
			testWithExistingInputs(true, randomSeed, timeout, "experiments/failingTests/", "smt2", true);
			return;
		}
		if (cmd.hasOption("testSolver") && (cmd.hasOption("latest") || cmd.hasOption("prior"))
				&& (cmd.hasOption("sat") || cmd.hasOption("unsat"))) {
			// -testSolver <Z3-seq/Z3str3/CVC4> -latest/-prior -sat/-unsat [-triggers]

			// test the specified version of a solver on our test suite (only sat formulas /
			// only unsat formulas without triggers/ only unsat formulas with triggers

			String solverName = cmd.getOptionValue("testSolver").toLowerCase();
			boolean latestVersion = cmd.hasOption("latest");
			Status expectedStatus;
			if (cmd.hasOption("sat")) {
				expectedStatus = Status.sat;
			} else {
				expectedStatus = Status.unsat;
			}

			AbstractExpressionsGenerator.useTriggers = cmd.hasOption("triggers");
			String solver;
			String testsFolder;
			TestsRunner runner = null;
			if (latestVersion) {
				testsFolder = "experiments/failingTests/";
				switch (solverName) {
				case "z3-seq":
					solver = z3_seq_486;
					runner = createZ3seqRunner(randomSeed, timeout, solver);
					break;
				case "z3str3":
					solver = z3_str3_486;
					runner = createZ3str3Runner(randomSeed, timeout, solver);
					break;
				case "cvc4":
					solver = cvc4_17;
					runner = createCVC4Runner(randomSeed, timeout, solver);
					break;
				default:
					formatter.printHelp("string solvers tests", options);
					return;
				}
			} else {
				testsFolder = "experiments/generatedTests/";
				switch (solverName) {
				case "z3-seq":
					solver = z3_seq_471;
					runner = createZ3seqRunner(randomSeed, timeout, solver);
					break;
				case "z3str3":
					solver = z3_str3_471;
					runner = createZ3str3Runner(randomSeed, timeout, solver);
					break;
				case "cvc4":
					solver = cvc4_16;
					runner = createCVC4Runner(randomSeed, timeout, solver);
					break;
				default:
					formatter.printHelp("string solvers tests", options);
					return;
				}
			}
			testForStatus(latestVersion, randomSeed, testsFolder, "smt2", true, runner, expectedStatus);
			return;
		}
		if (cmd.hasOption("testSolver") && (cmd.hasOption("latest") || cmd.hasOption("prior"))
				&& cmd.hasOption("file")) {
			// -testSolver <Z3-seq/Z3str3/CVC4> -latest/-prior -file <path to file>

			// test the specified version of a solver on a given file from our test suite
			String solverName = cmd.getOptionValue("testSolver").toLowerCase();
			boolean latestVersion = cmd.hasOption("latest");
			String fileName = cmd.getOptionValue("file");
			Status expectedStatus = SMTStringUtils.getExpectedStatus(fileName);

			String solver;
			String testsFolder;
			TestsRunner runner = null;
			if (latestVersion) {
				testsFolder = "experiments/failingTests/";
				switch (solverName) {
				case "z3-seq":
					solver = z3_seq_486;
					runner = createZ3seqRunner(randomSeed, timeout, solver);
					break;
				case "z3str3":
					solver = z3_str3_486;
					runner = createZ3str3Runner(randomSeed, timeout, solver);
					break;
				case "cvc4":
					solver = cvc4_17;
					runner = createCVC4Runner(randomSeed, timeout, solver);
					break;
				default:
					formatter.printHelp("string solvers tests", options);
					return;
				}
			} else {
				testsFolder = "experiments/generatedTests/";
				switch (solverName) {
				case "z3-seq":
					solver = z3_seq_471;
					runner = createZ3seqRunner(randomSeed, timeout, solver);
					break;
				case "z3str3":
					solver = z3_str3_471;
					runner = createZ3str3Runner(randomSeed, timeout, solver);
					break;
				case "cvc4":
					solver = cvc4_16;
					runner = createCVC4Runner(randomSeed, timeout, solver);
					break;
				default:
					formatter.printHelp("string solvers tests", options);
					return;
				}
			}
			Status actualStatus = runner.runExistingFile(fileName, testsFolder, expectedStatus, true);
			if (actualStatus == expectedStatus) {
				System.out.println("The test passed for " + solverName);
			}
			return;
		}

		if (cmd.hasOption("testStringFuzz")) {
			// -testStringFuzz
			// test the solvers versions from the paper on the stringFuzz test suite (4.7.1
			// for Z3-based solvers and 1.6 for CVC4)
			testWithExistingInputs(false, randomSeed, timeout, "experiments/stringFuzzTests/", "smt25", false);
			return;
		}
		if (cmd.hasOption("genABC")) {
			// -genABC
			// pre-process our test suite for ABC (remove annotations and let expressions,
			// replace double quotes in constant strings with \")
			// remove the tests that contain non-ASCII strings
			generateABCTestSuite(randomSeed, "experiments/generatedTests/", "smt2");
			return;
		}
		if (cmd.hasOption("testABC")) {
			// -testABC
			// test ABC on our (modified) test suite
			testABC(randomSeed, "experiments/abcTests/", "smt2");
			return;
		}
		formatter.printHelp("string solvers tests", options);
	}

	private static void findSolversPaths() {
		try {
			BufferedReader bufferReader = new BufferedReader(new FileReader("src/config.txt"));
			String line;
			while ((line = bufferReader.readLine()) != null) {
				String[] splitLine = line.split("=");
				String solverName = splitLine[0].trim();
				String path = splitLine[1].trim();
				switch (solverName) {
				case "z3_seq_471":
					z3_seq_471 = path;
					break;
				case "z3_str3_471":
					z3_str3_471 = path;
					break;
				case "cvc4_16":
					cvc4_16 = path;
					break;
				case "z3_seq_486":
					z3_seq_486 = path;
					break;
				case "z3_str3_486":
					z3_str3_486 = path;
					break;
				case "cvc4_17":
					cvc4_17 = path;
					break;
				}
			}
			bufferReader.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void generate(int randomSeed) {
		RulesBasedExpressionsGenerator rbGenerator = new SatExpressionsGenerator(randomSeed);
		// generate sat formulas
		rbGenerator.generate();

		rbGenerator = new UnsatExpressionsGenerator(randomSeed);
		AbstractExpressionsGenerator.useTriggers = false;
		// generate unsat formulas without triggers
		rbGenerator.generate();

		AbstractExpressionsGenerator.useTriggers = true;
		// generate unsat formulas with triggers
		rbGenerator.generate();
	}

}
