/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.IntExpr;
import com.microsoft.z3.SeqExpr;
import com.microsoft.z3.Sort;

import generator.operations.Operation;
import generator.operations.strings.At;
import generator.operations.strings.Concat;
import generator.operations.strings.Contains;
import generator.operations.strings.Equals;
import generator.operations.strings.IndexOf;
import generator.operations.strings.IntToString;
import generator.operations.strings.Length;
import generator.operations.strings.PrefixOf;
import generator.operations.strings.Replace;
import generator.operations.strings.StringOperation;
import generator.operations.strings.StringToInt;
import generator.operations.strings.Substr;
import generator.operations.strings.SuffixOf;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.generator.RewritingRule;
import generator.strings.generator.UnsatExpressionsGenerator;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;
import runner.Status;
import runner.TestsRunner;

public class SMTStringUtils {

	public static int tmpVariablesCounter = 0;

	private static String getHexString(String string) {
		try {
			int integer = Integer.parseInt(string, 16);
			return new String(new char[] { (char) integer });

		} catch (NumberFormatException e) {
			return null;
		}
	}

	public static Map<Integer, String> toMap(String string) {
		Map<Integer, String> stringAsMap = new HashMap<Integer, String>();
		int index;
		int key = 0;
		for (index = 0; index < string.length(); index++, key++) {
			char currentChar = string.charAt(index);
			if (currentChar != '\\' && currentChar != '\"') {
				stringAsMap.put(key, String.valueOf(currentChar));
				continue;
			}
			// currentChar == '\\' or currentChar == '\"'
			if (index + 1 < string.length()) {
				char nextChar = string.charAt(index + 1);
				if (currentChar == '\"') {
					if (nextChar == '\"') {
						stringAsMap.put(key, "\"");
						index++;
					} else { // "\"" (simple, not double quotes, no special character)
						stringAsMap.put(key, String.valueOf(currentChar));
					}
				} else {
					switch (nextChar) {
					case 'a':
						stringAsMap.put(key, new String(new char[] { 0x07 }));
						index++;
						break;
					case 'v':
						stringAsMap.put(key, new String(new char[] { 0x0B }));
						index++;
						break;
					case 'x':
						char thirdChar = string.charAt(index + 2);
						char fourthChar = string.charAt(index + 3);
						String possibleHexString = String.valueOf(thirdChar) + String.valueOf(fourthChar);
						String hexString = getHexString(possibleHexString);
						if (hexString != null) {
							stringAsMap.put(key, hexString);
							index += 3;
							break;
						}
						stringAsMap.put(key, String.valueOf(currentChar));
					case '\\':
						// "\\\\"
						stringAsMap.put(key, String.valueOf(currentChar) + String.valueOf(nextChar));
						index++;
						break;
					default: {
						stringAsMap.put(key, String.valueOf(nextChar));
						index++;
						break;
					}
					}
				}
			} else { // '\\' is the last character
				stringAsMap.put(key, String.valueOf(currentChar));
			}
		}
		return stringAsMap;
	}

	public static String withoutSpecialCharacters(String string) {
		Map<Integer, String> stringAsMap = toMap(string);
		String newString = fromMap(stringAsMap, 0, stringAsMap.size());
		return newString;
	}

	public static String fromMap(Map<Integer, String> stringAsMap, int minKey, int maxKey) {
		String mapAsString = "";
		for (Integer key : stringAsMap.keySet()) {
			if (key < minKey || key >= maxKey) {
				continue;
			}
			mapAsString = mapAsString.concat(stringAsMap.get(key));
		}
		return mapAsString;
	}

	public static IntExpr tmpInt(Context ctx, SMTInt smtInt) {
		Sort intType = ctx.getIntSort();
		String tmpIntName = smtInt.getName();
		return (IntExpr) ctx.mkConst(tmpIntName, intType);
	}

	public static SeqExpr tmpString(Context ctx, SMTString smtString) {
		Sort stringType = ctx.getStringSort();
		String tmpStringName = smtString.getName();
		return (SeqExpr) ctx.mkConst(tmpStringName, stringType);
	}

	public static BoolExpr tmpBool(Context ctx, SMTBool smtBool) {
		Sort boolType = ctx.getBoolSort();
		String tmpBoolName = smtBool.getName();
		return (BoolExpr) ctx.mkConst(tmpBoolName, boolType);
	}

	public static List<List<Integer>> powerSet(List<Integer> originalList) {
		List<List<Integer>> lists = computePowerSet(originalList);
		Collections.sort(lists, new SizeComparator<>());
		// remove the indexes corresponding to a generic operation
		lists.remove(0);
		return lists;
	}

	private static List<List<Integer>> computePowerSet(List<Integer> originalList) {
		List<List<Integer>> lists = new ArrayList<List<Integer>>();
		if (originalList.isEmpty()) {
			lists.add(new ArrayList<Integer>());
			return lists;
		}
		Integer head = originalList.get(0);
		List<Integer> rest = new ArrayList<Integer>(originalList.subList(1, originalList.size()));
		for (List<Integer> list : computePowerSet(rest)) {
			List<Integer> newList = new ArrayList<Integer>();
			newList.add(head);
			newList.addAll(list);
			lists.add(newList);
			lists.add(list);
		}
		return lists;
	}

	private static class SizeComparator<T extends Comparable<T>> implements Comparator<List<T>> {
		@Override
		public int compare(List<T> list1, List<T> list2) {
			if (list1.size() > list2.size()) {
				return -1;
			}
			if (list1.size() == list2.size()) {
				return 0;
			}
			return 1;
		}
	}

	public static List<SMTConstructedObject> convertArgumentsToList(SMTConstructedObject first,
			SMTConstructedObject second, SMTConstructedObject third) {
		List<SMTConstructedObject> arguments = new ArrayList<SMTConstructedObject>();
		arguments.add(first);
		arguments.add(second);
		arguments.add(third);
		return arguments;
	}

	public static List<SMTConstructedObject> convertArgumentsToList(SMTConstructedObject first,
			SMTConstructedObject second) {
		List<SMTConstructedObject> arguments = new ArrayList<SMTConstructedObject>();
		arguments.add(first);
		arguments.add(second);
		return arguments;
	}

	public static List<SMTConstructedObject> convertArgumentsToList(SMTConstructedObject first) {
		List<SMTConstructedObject> arguments = new ArrayList<SMTConstructedObject>();
		arguments.add(first);
		return arguments;
	}

	public static boolean endsWithMap(String string, String suffix) {
		Map<Integer, String> stringAsMap = SMTStringUtils.toMap(string);
		Map<Integer, String> suffixAsMap = SMTStringUtils.toMap(suffix);
		int stringSize = stringAsMap.size();
		int suffixSize = suffixAsMap.size();
		if (stringSize < suffixSize) {
			return false;
		}
		int suffixIndex = 0;
		for (int index = stringSize - suffixSize; index < stringSize; index++, suffixIndex++) {
			if (!stringAsMap.get(index).equals(suffixAsMap.get(suffixIndex))) {
				return false;
			}
		}
		return true;
	}

	public static boolean startsWithMap(String string, String prefix) {
		Map<Integer, String> stringAsMap = SMTStringUtils.toMap(string);
		Map<Integer, String> prefixAsMap = SMTStringUtils.toMap(prefix);
		if (stringAsMap.size() < prefixAsMap.size()) {
			return false;
		}
		for (int index = 0; index < prefixAsMap.size(); index++) {
			if (!stringAsMap.get(index).equals(prefixAsMap.get(index))) {
				return false;
			}
		}
		return true;
	}

	// rewriting rules
	public static List<RewritingRule> getRules() {
		List<RewritingRule> rewritingRules = new ArrayList<RewritingRule>();

		rewritingRules.add(atRule());
		rewritingRules.add(concatRule());
		rewritingRules.add(intToStringRule());
		rewritingRules.add(replaceRule());
		rewritingRules.add(substringRule());

		rewritingRules.add(indexOfRule());
		rewritingRules.add(lengthRule());
		rewritingRules.add(stringToIntRule());

		rewritingRules.add(containsRule());
		rewritingRules.add(notContainsRule());
		rewritingRules.add(equalsRule());
		rewritingRules.add(notEqualsRule());
		rewritingRules.add(prefixOfRule());
		rewritingRules.add(notPrefixOfRule());
		rewritingRules.add(suffixOfRule());
		rewritingRules.add(notSuffixOfRule());
		return rewritingRules;
	}

	private static RewritingRule notEqualsRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTBool notEqualsResult = new SMTBool(false, null, Operation.isConstant);
		StringOperation notEquals = new Equals(s, t, notEqualsResult);
		return notEquals.getRewritingRule();
	}

	private static RewritingRule equalsRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTBool equalsResult = new SMTBool(true, null, Operation.isConstant);
		StringOperation equals = new Equals(s, t, equalsResult);
		return equals.getRewritingRule();
	}

	private static RewritingRule stringToIntRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt stringToIntResult = new SMTInt("result", AbstractExpressionsGenerator.unconstrained, null,
				!Operation.isConstant);
		StringOperation stringToInt = new StringToInt(s, stringToIntResult);
		return stringToInt.getRewritingRule();
	}

	private static RewritingRule lengthRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt lengthResult = new SMTInt("result", AbstractExpressionsGenerator.unconstrained, null,
				!Operation.isConstant);
		StringOperation length = new Length(s, lengthResult);
		return length.getRewritingRule();
	}

	private static RewritingRule concatRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString concatResult = new SMTString("result", AbstractExpressionsGenerator.unconstrained, null,
				!Operation.isConstant);
		StringOperation concat = new Concat(s, t, concatResult);
		return concat.getRewritingRule();
	}

	private static RewritingRule substringRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt offset = new SMTInt("offset", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt length = new SMTInt("length", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString substrResult = new SMTString("result", AbstractExpressionsGenerator.unconstrained, null,
				!Operation.isConstant);
		StringOperation substr = new Substr(s, offset, length, substrResult);
		return substr.getRewritingRule();
	}

	private static RewritingRule containsRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTBool containsResult = new SMTBool(true, null, Operation.isConstant);
		StringOperation contains = new Contains(s, t, containsResult);
		return contains.getRewritingRule();
	}

	private static RewritingRule notContainsRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTBool notContainsResult = new SMTBool(false, null, Operation.isConstant);
		StringOperation notContains = new Contains(s, t, notContainsResult);
		return notContains.getRewritingRule();
	}

	private static RewritingRule prefixOfRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTBool prefixOfResult = new SMTBool(true, null, Operation.isConstant);
		StringOperation prefixOf = new PrefixOf(s, t, prefixOfResult);
		return prefixOf.getRewritingRule();
	}

	private static RewritingRule notPrefixOfRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTBool notPrefixOfResult = new SMTBool(false, null, Operation.isConstant);
		StringOperation notPrefixOf = new PrefixOf(s, t, notPrefixOfResult);
		return notPrefixOf.getRewritingRule();
	}

	private static RewritingRule suffixOfRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTBool suffixOfResult = new SMTBool(true, null, Operation.isConstant);
		StringOperation suffixOf = new SuffixOf(s, t, suffixOfResult);
		return suffixOf.getRewritingRule();
	}

	private static RewritingRule notSuffixOfRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTBool notSuffixOfResult = new SMTBool(false, null, Operation.isConstant);
		StringOperation notSuffixOf = new SuffixOf(s, t, notSuffixOfResult);
		return notSuffixOf.getRewritingRule();
	}

	private static RewritingRule atRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt offset = new SMTInt("offset", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString atResult = new SMTString("result", AbstractExpressionsGenerator.unconstrained, null,
				!Operation.isConstant);
		StringOperation at = new At(s, offset, atResult);
		return at.getRewritingRule();
	}

	private static RewritingRule intToStringRule() {
		SMTInt integer = new SMTInt("integer", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString intToStringResult = new SMTString("result", AbstractExpressionsGenerator.unconstrained, null,
				!Operation.isConstant);
		StringOperation intToString = new IntToString(integer, intToStringResult);
		return intToString.getRewritingRule();
	}

	private static RewritingRule indexOfRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt offset = new SMTInt("offset", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTInt indexOfResult = new SMTInt("result", AbstractExpressionsGenerator.unconstrained, null,
				!Operation.isConstant);
		StringOperation indexOf = new IndexOf(s, t, offset, indexOfResult);
		return indexOf.getRewritingRule();
	}

	private static RewritingRule replaceRule() {
		SMTString s = new SMTString("s", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString t = new SMTString("t", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString u = new SMTString("u", AbstractExpressionsGenerator.unconstrained, null, !Operation.isConstant);
		SMTString replaceResult = new SMTString("result", AbstractExpressionsGenerator.unconstrained, null,
				!Operation.isConstant);
		StringOperation replace = new Replace(s, t, u, replaceResult);
		return replace.getRewritingRule();
	}

	public static List<Integer> makeIndexList(List<SMTConstructedObject> constantArguments) {
		List<Integer> indexes = new ArrayList<Integer>();
		for (int i = 0; i < constantArguments.size(); i++) {
			indexes.add(i);
		}
		return indexes;
	}

	public static Integer getComplementaryId(int operationId) {
		switch (operationId) {
		case AbstractExpressionsGenerator.CONTAINS: {
			return AbstractExpressionsGenerator.NOT_CONTAINS;
		}
		case AbstractExpressionsGenerator.EQUALS: {
			return AbstractExpressionsGenerator.NOT_EQUALS;
		}
		case AbstractExpressionsGenerator.PREFIX_OF: {
			return AbstractExpressionsGenerator.NOT_PREFIX_OF;
		}
		case AbstractExpressionsGenerator.SUFFIX_OF: {
			return AbstractExpressionsGenerator.NOT_SUFFIX_OF;
		}
		case AbstractExpressionsGenerator.NOT_CONTAINS: {
			return AbstractExpressionsGenerator.CONTAINS;
		}
		case AbstractExpressionsGenerator.NOT_EQUALS: {
			return AbstractExpressionsGenerator.EQUALS;
		}
		case AbstractExpressionsGenerator.NOT_PREFIX_OF: {
			return AbstractExpressionsGenerator.PREFIX_OF;
		}
		case AbstractExpressionsGenerator.NOT_SUFFIX_OF: {
			return AbstractExpressionsGenerator.SUFFIX_OF;
		}
		}
		return null;
	}

	public static String getNameFromId(int operationId) {
		switch (operationId) {
		case AbstractExpressionsGenerator.AT: {
			return "at";
		}
		case AbstractExpressionsGenerator.CONCAT: {
			return "concat";
		}
		case AbstractExpressionsGenerator.INT_TO_STRING: {
			return "intToString";
		}
		case AbstractExpressionsGenerator.REPLACE: {
			return "replace";
		}
		case AbstractExpressionsGenerator.SUBSTR: {
			return "substring";
		}
		case AbstractExpressionsGenerator.INDEX_OF: {
			return "indexOf";
		}
		case AbstractExpressionsGenerator.LENGTH: {
			return "length";
		}
		case AbstractExpressionsGenerator.STRING_TO_INT: {
			return "stringToInt";
		}
		case AbstractExpressionsGenerator.CONTAINS: {
			return "contains";
		}
		case AbstractExpressionsGenerator.EQUALS: {
			return "equals";
		}
		case AbstractExpressionsGenerator.PREFIX_OF: {
			return "prefixOf";
		}
		case AbstractExpressionsGenerator.SUFFIX_OF: {
			return "suffixOf";
		}
		case AbstractExpressionsGenerator.NOT_CONTAINS: {
			return "notContains";
		}
		case AbstractExpressionsGenerator.NOT_EQUALS: {
			return "notEquals";
		}
		case AbstractExpressionsGenerator.NOT_PREFIX_OF: {
			return "notPrefixOf";
		}
		case AbstractExpressionsGenerator.NOT_SUFFIX_OF: {
			return "notSuffixOf";
		}
		}
		return null;
	}

	public static List<SMTConstructedObject> unionWithoutDuplicates(List<SMTConstructedObject> list1,
			List<SMTConstructedObject> list2) {
		List<SMTConstructedObject> noDuplicates = new ArrayList<SMTConstructedObject>();
		List<SMTConstructedObject> allElements = list1;
		allElements.addAll(list2);
		List<String> allNames = new ArrayList<String>();
		for (SMTConstructedObject arg : allElements) {
			String name = arg.getName();
			if (!allNames.contains(name)) {
				noDuplicates.add(arg);
				allNames.add(name);
			}
		}
		return noDuplicates;
	}

	private static boolean containsElementWithName(List<SMTConstructedObject> list, String name) {
		for (SMTConstructedObject arg : list) {
			if (arg.getName().equals(name)) {
				return true;
			}
		}
		return false;
	}

	// should be equivalent to list1.removeAll(list2), but equality based on names
	public static List<SMTConstructedObject> removeArgumentsWithNames(List<SMTConstructedObject> list1,
			List<SMTConstructedObject> list2) {
		List<SMTConstructedObject> result = new ArrayList<SMTConstructedObject>();
		for (SMTConstructedObject arg : list1) {
			String name = arg.getName();
			if (!containsElementWithName(list2, name)) {
				result.add(arg);
			}
		}
		return result;
	}

	public static List<SMTConstructedObject> addWithoutDuplicates(List<SMTConstructedObject> list1,
			SMTConstructedObject object) {
		List<SMTConstructedObject> list2 = new ArrayList<SMTConstructedObject>();
		list2.add(object);
		return unionWithoutDuplicates(list1, list2);
	}

	public static String extractTransformationName(String smtTestFileName, Status expectedStatus) {
		if (smtTestFileName.contains(AbstractExpressionsGenerator.constant)) {
			return AbstractExpressionsGenerator.constant;
		}
		if (smtTestFileName.contains(AbstractExpressionsGenerator.termSyn)) {
			return AbstractExpressionsGenerator.termSyn;
		}
		if (smtTestFileName.contains(AbstractExpressionsGenerator.largerUnsatCoreTriggers)) {
			return AbstractExpressionsGenerator.largerUnsatCoreTriggers;
		}
		if (smtTestFileName.contains(AbstractExpressionsGenerator.redundantTriggers)) {
			return AbstractExpressionsGenerator.redundantTriggers;
		}
		if (smtTestFileName.contains(AbstractExpressionsGenerator.largerUnsatCore)) {
			return AbstractExpressionsGenerator.largerUnsatCore;
		}
		if (smtTestFileName.contains(AbstractExpressionsGenerator.redundant)) {
			return AbstractExpressionsGenerator.redundant;
		}
		if (expectedStatus == Status.sat) {
			return AbstractExpressionsGenerator.operation;
		}
		// unsat
		if (!AbstractExpressionsGenerator.useTriggers) {
			return AbstractExpressionsGenerator.equivalentFormula;
		}
		return AbstractExpressionsGenerator.equivalentFormulaTriggers;
	}

	public static String extractVersion(String solverName) {
		if (solverName.contains("4.7.1")) {
			return "4.7.1";
		}
		if (solverName.contains("4.8.4")) {
			return "4.8.4";
		}
		if (solverName.contains("4.8.6")) {
			return "4.8.6";
		}
		if (solverName.contains("1.7")) {
			return "1.7";
		}
		if (solverName.contains("1.6")) {
			return "1.6";
		}
		// for abc
		return "master";
	}

	public static String otherVersion(String solverName) {
		if (solverName.contains("z3")) {
			return "4.8.4";
		}
		return "";
	}

	public static void moveFileToFolder(File file, String folderName, String smtTestFileName) {
		File folder = new File(folderName);
		if (!folder.exists()) {
			folder.mkdirs();
		}
		File to = new File(folderName + smtTestFileName);
		file.renameTo(to);
	}

	public static List<String> readTests(String folderName) {
		List<String> fileNames = new ArrayList<String>();
		File folder = new File(folderName);
		if (folder.exists()) {
			Collection<File> files = FileUtils.listFiles(folder, new String[] { "smt2" }, true);
			for (File file : files) {
				String name = file.getName();
				fileNames.add(name);
			}
		}
		return fileNames;
	}

	public static Map<Status, List<String>> readFailingTests(TestsRunner runner, Status expectedStatus) {
		Map<Status, List<String>> failedTests = new HashMap<Status, List<String>>();

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
			String folderName = runner.getFailingTestsFolder(expectedStatus, actualStatus);
			failedTests.put(actualStatus, readTests(folderName));
		}
		return failedTests;
	}

	public static Status alreadyKnownStatus(Map<Status, List<String>> alreadyFailedTests, String fileName) {
		for (Status status : alreadyFailedTests.keySet()) {
			List<String> fileNames = alreadyFailedTests.get(status);
			if (fileNames.contains(fileName)) {
				return status;
			}
		}
		return null;
	}

	public static List<SMTConstructedObject> getArgumentsWithName(List<SMTConstructedObject> allArguments,
			String name) {
		List<SMTConstructedObject> argumentsWithName = new ArrayList<SMTConstructedObject>();
		for (SMTConstructedObject arg : allArguments) {
			String argName = arg.getName();
			if (argName != null && argName.equals(name)) {
				argumentsWithName.add(arg);
			}
		}
		return argumentsWithName;
	}

	public static int computeHigherIndex(List<SMTConstructedObject> allArguments) {
		List<Integer> indexes = computeTmpVariablesIndexes(allArguments);
		if (indexes.isEmpty()) {
			return -1;
		}
		return Collections.max(indexes);
	}

	public static List<Integer> computeTmpVariablesIndexes(List<SMTConstructedObject> allArguments) {
		List<Integer> indexes = new ArrayList<Integer>();
		for (SMTConstructedObject arg : allArguments) {
			String name = arg.getName();
			if (name != null) {
				name = name.replaceAll(SMTConstructedObject.tmpBool, "");
				name = name.replaceAll(SMTConstructedObject.tmpInt, "");
				name = name.replaceAll(SMTConstructedObject.tmpString, "");
				name = name.replaceAll(UnsatExpressionsGenerator.fresh, "");
				try {
					int index = Integer.parseInt(name);
					if (!indexes.contains(index)) {
						indexes.add(index);
					}
				} catch (NumberFormatException e) {
					// do nothing
				}
			}
		}
		return indexes;
	}

	public static Status getExpectedStatus(String fileName) {
		String status = null;
		try {
			BufferedReader reader = new BufferedReader(new FileReader(fileName));
			String line = reader.readLine();
			while (!line.contains(AbstractExpressionsGenerator.testStatus)) {
				line = reader.readLine();
			}
			status = line.substring(line.indexOf(AbstractExpressionsGenerator.testStatus)
					+ AbstractExpressionsGenerator.testStatus.length(), line.length() - 1).trim();
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return Status.getStatus(status);
	}

}
