/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.strings.utils;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;

import org.apache.commons.io.FileUtils;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import com.microsoft.z3.IntSort;
import com.microsoft.z3.Pattern;
import com.microsoft.z3.Quantifier;
import com.microsoft.z3.SeqExpr;
import com.microsoft.z3.SeqSort;
import com.microsoft.z3.Sort;
import com.microsoft.z3.Symbol;
import com.microsoft.z3.Z3Exception;
import com.microsoft.z3.enumerations.Z3_decl_kind;

import generator.operations.Div;
import generator.operations.Modulo;
import generator.operations.Operation;
import generator.operations.connectors.And;
import generator.operations.connectors.Equivalent;
import generator.operations.connectors.Forall;
import generator.operations.connectors.GreaterEquals;
import generator.operations.connectors.GreaterThan;
import generator.operations.connectors.IfThenElse;
import generator.operations.connectors.Implies;
import generator.operations.connectors.LessThan;
import generator.operations.connectors.LessThanEquals;
import generator.operations.connectors.Or;
import generator.operations.connectors.SMTElement;
import generator.operations.strings.At;
import generator.operations.strings.Concat;
import generator.operations.strings.Contains;
import generator.operations.strings.Equals;
import generator.operations.strings.IndexOf;
import generator.operations.strings.IntToString;
import generator.operations.strings.Length;
import generator.operations.strings.PrefixOf;
import generator.operations.strings.Replace;
import generator.operations.strings.StringToInt;
import generator.operations.strings.Substr;
import generator.operations.strings.SuffixOf;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;
import generator.strings.types.SMTInt;
import generator.strings.types.SMTString;

public class SMTParserUtils {

	private static boolean isWrapperEquals(Expr testedFormula, Z3_decl_kind type1) {
		if (type1 != Z3_decl_kind.Z3_OP_EQ) {
			return false;
		}
		try {
			boolean result = testedFormula.getArgs()[0].getFuncDecl().getDeclKind() == Z3_decl_kind.Z3_OP_EQ;
			return result;
		} catch (Z3Exception e) {
			return false;
		}
	}

	private static Operation reconstructOperationWithResult(Map<String, String> variablesToValues,
			List<SMTConstructedObject> quantifiedVariables, Expr testedFormula, Expr result) {
		Operation operation = reconstructOperation(variablesToValues, testedFormula, quantifiedVariables);
		SMTConstructedObject operationResult;
		if (result.toString().startsWith("(:var")) {
			// the result is a quantified variable
			operationResult = reconstructQuantifiedVariable(result, quantifiedVariables);
		} else {
			operationResult = reconstructResult(variablesToValues, result, quantifiedVariables);
		}
		operation.setResult(operationResult);
		operation.assignNamesToArguments();
		return operation;
	}

	private static SMTConstructedObject reconstructQuantifiedVariable(Expr equivalentExpression,
			List<SMTConstructedObject> quantifiedVariables) {
		String name = equivalentExpression.toString();
		name = name.replace(")", "");
		int index = Integer.valueOf(name.substring(name.indexOf(" ") + 1));
		// to solve the ordering problem
		index = quantifiedVariables.size() - 1 - index;
		return quantifiedVariables.get(index);
	}

	public static SMTElement reconstructEquivalentFormula(Map<String, String> variablesToValues,
			Expr equivalentExpression, List<SMTConstructedObject> quantifiedVariables) {

		SMTElement smtElement = null;
		if (equivalentExpression.toString().startsWith("(:var")) {
			// variable in quantifier
			smtElement = reconstructQuantifiedVariable(equivalentExpression, quantifiedVariables);
			return smtElement;
		}
		if (!equivalentExpression.isQuantifier()) {
			Z3_decl_kind type = equivalentExpression.getFuncDecl().getDeclKind();
			Expr[] exprArguments = equivalentExpression.getArgs();
			switch (type) {
			case Z3_OP_AND: {
				Expr leftExpr = exprArguments[0];
				Expr rightExpr = exprArguments[1];
				SMTElement left = reconstructEquivalentFormula(variablesToValues, leftExpr, quantifiedVariables);
				SMTElement right = reconstructEquivalentFormula(variablesToValues, rightExpr, quantifiedVariables);
				smtElement = new And(left, right);
				break;
			}
			case Z3_OP_OR: {
				Expr leftExpr = exprArguments[0];
				Expr rightExpr = exprArguments[1];
				SMTElement left = reconstructEquivalentFormula(variablesToValues, leftExpr, quantifiedVariables);
				SMTElement right = reconstructEquivalentFormula(variablesToValues, rightExpr, quantifiedVariables);
				smtElement = new Or(left, right);
				break;
			}
			case Z3_OP_IMPLIES: {
				Expr leftExpr = exprArguments[0];
				Expr rightExpr = exprArguments[1];
				SMTElement left = reconstructEquivalentFormula(variablesToValues, leftExpr, quantifiedVariables);
				SMTElement right = reconstructEquivalentFormula(variablesToValues, rightExpr, quantifiedVariables);
				smtElement = new Implies(left, right);
				break;
			}
			case Z3_OP_LT: {
				Expr leftExpr = exprArguments[0];
				Expr rightExpr = exprArguments[1];
				SMTElement left = reconstructEquivalentFormula(variablesToValues, leftExpr, quantifiedVariables);
				SMTElement right = reconstructEquivalentFormula(variablesToValues, rightExpr, quantifiedVariables);
				smtElement = new LessThan(left, right);
				break;
			}
			case Z3_OP_LE: {
				Expr leftExpr = exprArguments[0];
				Expr rightExpr = exprArguments[1];
				SMTElement left = reconstructEquivalentFormula(variablesToValues, leftExpr, quantifiedVariables);
				SMTElement right = reconstructEquivalentFormula(variablesToValues, rightExpr, quantifiedVariables);
				smtElement = new LessThanEquals(left, right);
				break;
			}
			case Z3_OP_GT: {
				Expr leftExpr = exprArguments[0];
				Expr rightExpr = exprArguments[1];
				SMTElement left = reconstructEquivalentFormula(variablesToValues, leftExpr, quantifiedVariables);
				SMTElement right = reconstructEquivalentFormula(variablesToValues, rightExpr, quantifiedVariables);
				smtElement = new GreaterThan(left, right);
				break;
			}
			case Z3_OP_GE: {
				Expr leftExpr = exprArguments[0];
				Expr rightExpr = exprArguments[1];
				SMTElement left = reconstructEquivalentFormula(variablesToValues, leftExpr, quantifiedVariables);
				SMTElement right = reconstructEquivalentFormula(variablesToValues, rightExpr, quantifiedVariables);
				smtElement = new GreaterEquals(left, right);
				break;
			}
			case Z3_OP_EQ: {// operation == result or equivalent
				Expr testedFormula = exprArguments[0];
				if (!testedFormula.isQuantifier() && !testedFormula.toString().contains("forall")) {
					Z3_decl_kind type1 = testedFormula.getFuncDecl().getDeclKind();
					Operation operation1;
					Expr result1;
					if (isOperation(type1)) {
						if (isWrapperEquals(testedFormula, type1)) {
							Expr testedFormula1 = testedFormula.getArgs()[0];
							result1 = testedFormula.getArgs()[1];

							operation1 = reconstructOperationWithResult(variablesToValues, quantifiedVariables,
									testedFormula1, result1);

							Expr possibleEquals = exprArguments[1];
							Z3_decl_kind type2 = possibleEquals.getFuncDecl().getDeclKind();
							if (isWrapperEquals(possibleEquals, type2)) { // should be always true
								Expr testedFormula2 = possibleEquals.getArgs()[0];
								Expr result2 = possibleEquals.getArgs()[1];

								Operation operation2 = reconstructOperationWithResult(variablesToValues,
										quantifiedVariables, testedFormula2, result2);

								smtElement = new Equivalent(operation1, operation2); // equivalence between 2 operations
								break;
							}
						} else {
							result1 = exprArguments[1];
						}
						operation1 = reconstructOperationWithResult(variablesToValues, quantifiedVariables,
								testedFormula, result1);
						smtElement = operation1;
						break;
					}
				}
				// equivalent
				Expr leftExpr = exprArguments[0];
				Expr rightExpr = exprArguments[1];
				SMTElement left = reconstructEquivalentFormula(variablesToValues, leftExpr, quantifiedVariables);
				SMTElement right = reconstructEquivalentFormula(variablesToValues, rightExpr, quantifiedVariables);
				smtElement = new Equivalent(left, right);
				break;
			}
			case Z3_OP_UNINTERPRETED:
			case Z3_OP_ANUM:
				smtElement = reconstructArgument(variablesToValues, equivalentExpression);
				break;
			case Z3_OP_ITE: {
				Expr ifExpr = exprArguments[0];
				Expr thenExpr = exprArguments[1];
				Expr elseExpr = exprArguments[2];
				SMTElement ifClause = reconstructEquivalentFormula(variablesToValues, ifExpr, quantifiedVariables);
				SMTElement thenClause = reconstructEquivalentFormula(variablesToValues, thenExpr, quantifiedVariables);
				SMTElement elseClause = reconstructEquivalentFormula(variablesToValues, elseExpr, quantifiedVariables);
				smtElement = new IfThenElse(ifClause, thenClause, elseClause);
				break;
			}
			default: { // arbitrary operation
				Operation operation = reconstructOperation(variablesToValues, equivalentExpression,
						quantifiedVariables);
				operation.assignNamesToArguments();
				smtElement = operation;
				break;
			}
			}
			return smtElement;
		} // quantifier

		Quantifier quantifier = (Quantifier) equivalentExpression;
		Symbol[] variableNames = quantifier.getBoundVariableNames();
		Sort[] variablesTypes = quantifier.getBoundVariableSorts();
		for (int index = 0; index < variableNames.length; index++) {
			Sort type = variablesTypes[index];
			Symbol name = variableNames[index];
			if (type instanceof IntSort) {
				quantifiedVariables.add(new SMTInt(name.toString(), AbstractExpressionsGenerator.unconstrained, null,
						!Operation.isConstant));
			} else if (type instanceof SeqSort) {
				quantifiedVariables.add(new SMTString(name.toString(), AbstractExpressionsGenerator.unconstrained, null,
						!Operation.isConstant));
			}
		}
		Expr bodyExpr = quantifier.getBody();
		SMTElement body = reconstructEquivalentFormula(variablesToValues, bodyExpr, quantifiedVariables);
		List<Operation> triggers = null;

		if (AbstractExpressionsGenerator.useTriggers) {
			triggers = new ArrayList<Operation>();
			Pattern firstPattern = quantifier.getPatterns()[0];
			for (Expr patternExpr : firstPattern.getTerms()) {
				Operation trigger = reconstructOperation(variablesToValues, patternExpr, quantifiedVariables);
				triggers.add(trigger);
			}
		}
		smtElement = new Forall(copiedQuantifiedVariables(quantifiedVariables), body, triggers);
		quantifiedVariables.removeAll(quantifiedVariables);
		return smtElement;

	}

	private static List<SMTConstructedObject> copiedQuantifiedVariables(
			List<SMTConstructedObject> quantifiedVariables) {
		List<SMTConstructedObject> copiedQuantifiedVariables = new ArrayList<SMTConstructedObject>();
		for (SMTConstructedObject quantifiedVariable : quantifiedVariables) {
			copiedQuantifiedVariables.add(quantifiedVariable);
		}
		return copiedQuantifiedVariables;
	}

	public static SMTConstructedObject reconstructArgument(Map<String, String> variablesToValues, Expr expr) {
		boolean isConstant = false;
		String variable = expr.getSExpr();
		if (variable.startsWith("\"") && variable.endsWith("\"")) {
			variable = variable.substring(1, variable.length() - 1);
		}
		// variable = variable.replace("\"\"", "\"");
		// for negative numbers like (- 1)
		if (variable.startsWith("(") && variable.endsWith(")")) {
			variable = variable.substring(1, variable.length() - 1);
			variable = variable.replace(" ", "");
		}
		// handle special characters
		variable = variable.replace("\\b", "\b");
		variable = variable.replace("\\f", "\f");
		variable = variable.replace("\\n", "\n");
		variable = variable.replace("\\r", "\r");
		variable = variable.replace("\\t", "\t");
		// variable = SMTStringUtils.removeHex(variable);
		String value = variablesToValues.get(variable);
		String witness;
		String name = null;
		if (value == null) {
			isConstant = true;
			value = variable;
			witness = value;
		} else {
			witness = value;
			value = AbstractExpressionsGenerator.unconstrained;
			name = variable;
		}

		SMTConstructedObject argument;
		if (expr instanceof SeqExpr) {
			argument = new SMTString(name, value, witness, null, isConstant, false);
		} else if (expr instanceof BoolExpr) {
			argument = new SMTBool(name, value, witness, null, isConstant, false);
		} else {
			argument = new SMTInt(name, value, witness, null, isConstant, false);
		}
		return argument;
	}

	public static Operation reconstructOperation(Map<String, String> variablesToValues, Expr formula,
			List<SMTConstructedObject> quantifiedVariables) {
		Expr[] exprArguments = formula.getArgs();
		List<SMTConstructedObject> arguments = new ArrayList<SMTConstructedObject>();
		for (Expr expr : exprArguments) {
			SMTConstructedObject argument;
			if (expr.toString().startsWith("(:var")) {
				// variable in quantifier
				argument = reconstructQuantifiedVariable(expr, quantifiedVariables);
				arguments.add(argument);
			} else {
				Z3_decl_kind type = expr.getFuncDecl().getDeclKind();
				if (isOperation(type)) {
					Operation operation = reconstructOperation(variablesToValues, expr, quantifiedVariables);
					SMTConstructedObject result = operation.getResult();
					arguments.add(result);
				} else {
					// it's primitive argument, not history
					argument = reconstructArgument(variablesToValues, expr);
					arguments.add(argument);
				}
			}
		}
		Operation operation = null;
		Z3_decl_kind operationType = formula.getFuncDecl().getDeclKind();
		switch (operationType) {
		case Z3_OP_SEQ_AT:
			operation = new At(arguments);
			break;
		case Z3_OP_SEQ_CONCAT:
			operation = new Concat(arguments);
			break;
		case Z3_OP_INT_TO_STR:
			operation = new IntToString(arguments);
			break;
		case Z3_OP_SEQ_REPLACE:
			operation = new Replace(arguments);
			break;
		case Z3_OP_EQ:
			operation = new Equals(arguments);
			break;
		case Z3_OP_SEQ_EXTRACT:
			operation = new Substr(arguments);
			break;
		case Z3_OP_SEQ_CONTAINS:
			operation = new Contains(arguments);
			break;
		case Z3_OP_SEQ_INDEX:
			operation = new IndexOf(arguments);
			break;
		case Z3_OP_SEQ_LENGTH:
			operation = new Length(arguments);
			break;
		case Z3_OP_SEQ_PREFIX:
			operation = new PrefixOf(arguments);
			break;
		case Z3_OP_STR_TO_INT:
			operation = new StringToInt(arguments);
			break;
		case Z3_OP_SEQ_SUFFIX:
			operation = new SuffixOf(arguments);
			break;
		case Z3_OP_IDIV:
			operation = new Div(arguments);
			break;
		case Z3_OP_MOD:
			operation = new Modulo(arguments);
			break;
		default:
			break;
		}
		return operation;
	}

	public static SMTConstructedObject reconstructResult(Map<String, String> variablesToValues, Expr expr,
			List<SMTConstructedObject> quantifiedVariables) {
		Z3_decl_kind type = expr.getFuncDecl().getDeclKind();
		if (isOperation(type)) {
			Operation operation = reconstructOperation(variablesToValues, expr, quantifiedVariables);
			operation.assignNamesToArguments();
			return operation.getResult();
		}
		// argument
		return reconstructArgument(variablesToValues, expr);
	}

	private static boolean isNotEqualsOperation(Z3_decl_kind type) {
		return type == Z3_decl_kind.Z3_OP_SEQ_AT || type == Z3_decl_kind.Z3_OP_SEQ_CONCAT
				|| type == Z3_decl_kind.Z3_OP_INT_TO_STR || type == Z3_decl_kind.Z3_OP_SEQ_REPLACE
				|| type == Z3_decl_kind.Z3_OP_SEQ_EXTRACT || type == Z3_decl_kind.Z3_OP_SEQ_CONTAINS
				|| type == Z3_decl_kind.Z3_OP_SEQ_INDEX || type == Z3_decl_kind.Z3_OP_SEQ_LENGTH
				|| type == Z3_decl_kind.Z3_OP_SEQ_PREFIX || type == Z3_decl_kind.Z3_OP_STR_TO_INT
				|| type == Z3_decl_kind.Z3_OP_SEQ_SUFFIX || type == Z3_decl_kind.Z3_OP_IDIV
				|| type == Z3_decl_kind.Z3_OP_MOD;
	}

	private static boolean isOperation(Z3_decl_kind type) {
		return type == Z3_decl_kind.Z3_OP_EQ || isNotEqualsOperation(type);
	}

	public static BoolExpr getSMTExpressionFromFile(File smtFile, Map<String, String> variablesToValues,
			List<String> assertions, Context ctx) throws IOException {
		String encoding = null;
		String smtFileContent = FileUtils.readFileToString(smtFile, encoding);
		String[] lines = smtFileContent.split("\n");
		String assertion = "";
		boolean start = false;
		for (String line : lines) {
			if (line.startsWith("(assert")) { // beginning of a new assertion
				if (!assertion.isEmpty()) {
					assertions.add(extractName(assertion));
				}
				assertion = "";
				start = true;
			}
			if (line.startsWith("(check-sat")) {
				start = false;
				assertions.add(extractName(assertion));
			}
			if (start) {
				assertion += line + "\n";
			}
			if (line.startsWith("(get-")) {
				smtFileContent = smtFileContent.replace(line, "");
			}
		}
		smtFileContent = smtFileContent.replaceAll("\\(" + AbstractExpressionsGenerator.produceUnsatCores + "\\)", "");
		variablesToValues.putAll(extractVariablesToValuesMap(smtFileContent));

		return ctx.parseSMTLIB2String(smtFileContent, null, null, null, null);
	}

	public static void createABCFile(String testsFolder, File smtFile) throws IOException {
		String abcFolderPrefix = "abcTests/";
		String fileName = smtFile.getCanonicalPath();
		fileName = fileName.replace(testsFolder, abcFolderPrefix);
		File abcFile = new File(fileName);

		if (abcFile.exists()) {
			return;
		}

		String encoding = null;
		String smtFileContent = FileUtils.readFileToString(smtFile, encoding);
		String[] lines = smtFileContent.split("\n");
		String assertion = "";
		String beginning = "";
		String end = "";

		boolean assertionStart = false;
		boolean checksCommentsStart = false;

		Map<String, Map<String, String>> letExpressions = new HashMap<String, Map<String, String>>();
		Map<String, String> letExpressionsPerAssertion = new HashMap<String, String>();

		String letString = "\\(let \\(\\((.*)\\)\\)";
		java.util.regex.Pattern letPattern = java.util.regex.Pattern.compile(letString);

		for (String line : lines) {
			// ABC doesn't support non-ASCII strings
			if (containsNonAsciiStrings(line)) {
				abcFile.delete();
				return;
			}
			// ABC uses \ to escape a ", not double "
			line = removeDoubleQuotes(line);
			if (line.startsWith("(assert")) { // beginning of a new assertion
				if (!assertion.isEmpty()) {
					assertion = removeName(assertion);
					letExpressions.put(assertion, letExpressionsPerAssertion);
				}
				assertion = "";
				assertionStart = true;
				letExpressionsPerAssertion = new HashMap<String, String>();
			}
			if (!assertionStart && !checksCommentsStart) {
				beginning += line + "\n";
			}
			if (line.startsWith("(check-sat")) {
				assertionStart = false;
				assertion = removeName(assertion);
				letExpressions.put(assertion, letExpressionsPerAssertion);
				checksCommentsStart = true;
			}
			if (checksCommentsStart && !line.startsWith("(get-value")) {
				// ABC doesn't properly support the get-value syntax
				end += line + "\n";
			}
			Matcher matcher = letPattern.matcher(line);
			if (matcher.find()) {
				String letExpression = matcher.group(1);
				int firstIndexOfSpace = letExpression.indexOf(" ");
				String variable = letExpression.substring(0, firstIndexOfSpace);
				String value = letExpression.substring(firstIndexOfSpace + 1);
				letExpressionsPerAssertion.put(variable, value);
			} else if (assertionStart) {
				// we do not add the lines with the let expressions
				assertion += line + "\n";
			}
		}
		List<String> assertions = propagateConstants(letExpressions);

		abcFile.getParentFile().mkdirs();
		PrintWriter out = new PrintWriter(abcFile);
		out.print(beginning);
		for (String anAssertion : assertions) {
			out.print(anAssertion);
		}
		out.print(end);
		out.close();
	}

	private static boolean containsNonAsciiStrings(String line) {
		String nonAsciiString = "\\x07";
		return line.contains(nonAsciiString);
	}

	private static String removeDoubleQuotes(String line) {
		if (line.startsWith(";")) {
			// comment line
			return line;
		}
		int index = line.indexOf("\"\"");
		if (index == -1) {
			return line;
		}
		String updatedLine = "";
		if (index > 0 && line.charAt(index - 1) == ' '
				&& (line.charAt(index + 2) == ' ' || line.charAt(index + 2) == ')')) {
			// empty string, we don't change it
			updatedLine = line.substring(0, index + 3);
			updatedLine = updatedLine + removeDoubleQuotes(line.substring(index + 3));
		} else {
			int startOfString = line.indexOf("\""); // may or may not be the same as index
			updatedLine = line.substring(0, startOfString); // everything before
			int indexOfSpace = line.substring(startOfString + 1).indexOf(" ");
			int indexOfBracket = line.substring(startOfString + 1).indexOf(")");
			int endOfString = indexOfSpace < indexOfBracket && indexOfSpace != -1 ? indexOfSpace : indexOfBracket;
			String quotedString = line.substring(startOfString + 1, startOfString + endOfString);
			quotedString = quotedString.replaceAll("\"\"", "\\\\\"");
			updatedLine = updatedLine + "\"" + quotedString + "\"";
			updatedLine = updatedLine + removeDoubleQuotes(line.substring(startOfString + endOfString + 1));
		}
		return updatedLine;
	}

	private static List<String> propagateConstants(Map<String, Map<String, String>> letExpressions) {
		List<String> assertions = new ArrayList<String>();

		for (String assertion : letExpressions.keySet()) {
			Map<String, String> letExpressionsPerAssertion = letExpressions.get(assertion);
			Set<String> variables = letExpressionsPerAssertion.keySet();
			int number = variables.size();

			// propagate the value of a Z3 tmp variable to the other let expressions
			boolean finished;
			do {
				finished = true;
				for (String variable : variables) {
					String expression = letExpressionsPerAssertion.get(variable);
					if (!containsZ3TmpVariables(expression, variables)) {
						letExpressionsPerAssertion = propagateVariable(variable, expression,
								letExpressionsPerAssertion);
					} else {
						finished = false;
					}
				}
			} while (!finished);

			// rewrite the assertion
			for (String variable : variables) {
				String expression = letExpressionsPerAssertion.get(variable);
				assertion = replaceVariable(variable, expression, assertion);
			}
			// remove number ")" from the end; the last character is "\n", so we add it back
			if (number != 0) {
				assertion = assertion.substring(0, assertion.length() - number - 1) + "\n";
			}
			assertions.add(assertion);
		}
		return assertions;
	}

	private static boolean containsZ3TmpVariables(String expression, Set<String> variables) {
		for (String variable : variables) {
			if (expression.contains(variable)) {
				return true;
			}
		}
		return false;
	}

	private static Map<String, String> propagateVariable(String variable, String replacementExpression,
			Map<String, String> letExpressionsPerAssertion) {
		Map<String, String> updatedMap = new HashMap<String, String>();
		for (String aVariable : letExpressionsPerAssertion.keySet()) {
			String anExpression = letExpressionsPerAssertion.get(aVariable);

			String updatedExpression = replaceVariable(variable, replacementExpression, anExpression);
			updatedMap.put(aVariable, updatedExpression);
		}
		return updatedMap;
	}

	private static String replaceVariable(String variable, String replacementExpression, String fromExpression) {
		String updatedExpression = fromExpression;
		int index = updatedExpression.indexOf(variable);
		while (index != -1) {
			int afterIndex = index + variable.length();
			// $x47 should not match $x479
			if (!Character.isDigit(updatedExpression.charAt(afterIndex))) {
				// we can replace it
				String before = updatedExpression.substring(0, index);
				String after = updatedExpression.substring(afterIndex);
				updatedExpression = before + replacementExpression + after;
			}
			index = updatedExpression.indexOf(variable, index + 1);
		}
		return updatedExpression;
	}

	private static String extractName(String assertion) {
		int index = assertion.indexOf(":named");
		if (index == -1) {
			return "";
		}
		String name = assertion.substring(":named".length() + index + 1);
		name = name.replaceAll("\\)", "");
		name = name.replaceAll("\n", "");
		return name;
	}

	private static String removeName(String assertion) {
		String name = extractName(assertion);
		if (name.isEmpty()) {
			return assertion;
		}
		assertion = assertion.replace("(!", "");
		assertion = assertion.replace(" :named " + name + ")", "");
		return assertion;
	}

	private static Map<String, String> extractVariablesToValuesMap(String smtFileContent) {
		Map<String, String> variablesToValues = new HashMap<String, String>();
		String[] lines = smtFileContent.split("\n");
		for (String line : lines) {
			if (line.startsWith(";actual status:")) {
				return variablesToValues;
			}
			if (line.startsWith(";") && line.contains("=")) {
				String[] lineContent = line.substring(1).split("=", 2);
				String value = lineContent[1].trim();
				variablesToValues.put(lineContent[0].trim(), value);
			}
		}
		return variablesToValues;
	}

}
