/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.connectors;

import java.util.ArrayList;
import java.util.List;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import com.microsoft.z3.Pattern;

import generator.operations.Operation;
import generator.strings.TrivialEquality;
import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.types.SMTConstructedObject;
import generator.strings.utils.SMTStringUtils;

public class Forall extends SMTElement {

	private List<SMTConstructedObject> quantifiedVariables;
	private SMTElement body;
	private List<Operation> triggers;

	public Forall(List<SMTConstructedObject> quantifiedVariables, SMTElement body, List<Operation> triggers) {
		this.quantifiedVariables = quantifiedVariables;
		this.body = body;
		for (SMTConstructedObject variable : quantifiedVariables) {
			variable.enclosingElement = this;
		}
		this.triggers = triggers;
	}

	public Forall(List<SMTConstructedObject> quantifiedVariables, SMTElement body, Operation trigger) {
		this(quantifiedVariables, body, asList(trigger));
	}

	private static List<Operation> asList(Operation trigger) {
		List<Operation> triggers = new ArrayList<Operation>();
		triggers.add(trigger);
		return triggers;
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		List<Expr> quantifiedVariablesExpressions = new ArrayList<Expr>();
		for (SMTConstructedObject variable : quantifiedVariables) {
			quantifiedVariablesExpressions.add(variable.toSMT(ctx));
		}
		BoolExpr bodyFormula = body.smtFormula(ctx);
		if (!AbstractExpressionsGenerator.useTriggers) {
			return ctx.mkForall(quantifiedVariablesExpressions.toArray(new Expr[0]), bodyFormula, 1, null, null, null,
					null);
		}
		Expr[] patterns = new Expr[triggers.size()];
		for (int index = 0; index < triggers.size(); index++) {
			Operation trigger = triggers.get(index);
			patterns[index] = trigger.toSMT(ctx);
		}
		Pattern pattern = ctx.mkPattern(patterns);
		return ctx.mkForall(quantifiedVariablesExpressions.toArray(new Expr[0]), bodyFormula, 1,
				new Pattern[] { pattern }, null, null, null);
	}

	@Override
	public List<SMTConstructedObject> getAllSymbolicArguments() {
		List<SMTConstructedObject> bodySymbolicArguments = body.getAllSymbolicArguments();
		List<SMTConstructedObject> allSymbolicArguments = SMTStringUtils.unionWithoutDuplicates(bodySymbolicArguments,
				quantifiedVariables);
		for (Operation trigger : triggers) {
			allSymbolicArguments = SMTStringUtils.unionWithoutDuplicates(allSymbolicArguments,
					trigger.getAllSymbolicArguments());
		}
		return allSymbolicArguments;
	}

	@Override
	public List<SMTConstructedObject> getConstantArguments() {
		return body.getConstantArguments();
	}

	@Override
	public List<SMTConstructedObject> getAllArguments() {
		List<SMTConstructedObject> allArguments = body.getAllArguments();
		allArguments.addAll(quantifiedVariables);
		for (Operation trigger : triggers) {
			allArguments.addAll(trigger.getAllArguments());
		}
		return allArguments;
	}

	@Override
	public List<SMTConstructedObject> getWitnesses() {
		List<SMTConstructedObject> witnessesFromBody = body.getWitnesses();
		// the quantified variables are local variables
		witnessesFromBody = SMTStringUtils.removeArgumentsWithNames(witnessesFromBody, quantifiedVariables);
		return witnessesFromBody;
	}

	public void update(TrivialEquality trivialEquality) {
		quantifiedVariables.addAll(trivialEquality.getAdditionalVariables());
		triggers.add(trivialEquality.getAdditionalTrigger());
		body = new Implies(trivialEquality.getEquality(), body);
	}

	public void reset(TrivialEquality trivialEquality) {
		List<SMTConstructedObject> additionalQuantifiedVariables = trivialEquality.getAdditionalVariables();
		List<SMTConstructedObject> resetedQuantifiedVariable = new ArrayList<SMTConstructedObject>();
		for (SMTConstructedObject variable : quantifiedVariables) {
			String name = variable.getName();
			List<SMTConstructedObject> argumentsWithName = SMTStringUtils
					.getArgumentsWithName(additionalQuantifiedVariables, name);
			if (argumentsWithName.isEmpty()) {
				resetedQuantifiedVariable.add(variable);
			}
		}
		quantifiedVariables = resetedQuantifiedVariable;

		List<Operation> resetedTriggers = new ArrayList<Operation>();
		Operation additionalTrigger = trivialEquality.getAdditionalTrigger();
		String additionalTriggerAsString = additionalTrigger.toString();
		for (Operation trigger : triggers) {
			if (!trigger.toString().equals(additionalTriggerAsString)) {
				resetedTriggers.add(trigger);
			}
		}
		triggers = resetedTriggers;

		SMTElement additionalEquality = trivialEquality.getEquality();
		if (body instanceof Implies) {
			SMTElement leftComponent = ((Implies) body).getLeft();
			SMTElement rightComponent = ((Implies) body).getRight();
			if (leftComponent.equals(additionalEquality)) {
				body = rightComponent;
			}
		}
	}

	public Expr toSMT(Context ctx) {
		return null;
	}

	@Override
	public SMTElement copy() {
		List<SMTConstructedObject> copiedQuantifiedVariables = new ArrayList<SMTConstructedObject>();
		for (SMTConstructedObject quantifiedVariable : quantifiedVariables) {
			copiedQuantifiedVariables.add(quantifiedVariable.copy());
		}
		SMTElement copiedBody = body.copy();
		List<Operation> copiedTriggers = new ArrayList<Operation>();
		for (Operation trigger : triggers) {
			copiedTriggers.add(trigger.copy());
		}
		return new Forall(copiedQuantifiedVariables, copiedBody, copiedTriggers);
	}

	@Override
	protected boolean isEquivalentTo(SMTElement other) {
		if (this.getClass() != other.getClass()) {
			return false;
		}
		Forall otherForall = (Forall) other;
		if (!this.body.isEquivalentTo(otherForall.body)) {
			return false;
		}
		if (this.quantifiedVariables.size() != otherForall.quantifiedVariables.size()) {
			return false;
		}
		for (int index = 0; index < this.quantifiedVariables.size(); index++) {
			SMTConstructedObject variable = this.quantifiedVariables.get(index);
			SMTConstructedObject otherVariable = otherForall.quantifiedVariables.get(index);
			if (!variable.isEquivalentTo(otherVariable)) {
				return false;
			}
		}
		return true;
	}

}
