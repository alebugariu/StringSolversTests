/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations;

import java.util.List;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;

import generator.strings.generator.AbstractExpressionsGenerator;
import generator.strings.types.SMTBool;
import generator.strings.types.SMTConstructedObject;

public class Not extends Operation {

	private Operation operation;

	public Not(Operation operation) {
		super(operation.getArguments());
		this.operation = operation;
	}

	private Not(List<SMTConstructedObject> arguments) {
		super(arguments);
	}

	@Override
	public BoolExpr smtFormula(Context ctx) {
		BoolExpr formula = operation.toSMTFormula(ctx);
		return ctx.mkNot(formula);
	}

	@Override
	public Expr toSMT(Context ctx) {
		// should not be needed
		return null;
	}

	@Override
	public SMTConstructedObject apply() {
		if (atLeastOneUnconstrainedArgument()) {
			return new SMTBool(AbstractExpressionsGenerator.unconstrained, this, !isConstant);
		}
		boolean operationResult = ((SMTBool) operation.getResult()).getBoolValue();
		return new SMTBool(!operationResult, this);
	}

	@Override
	public Operation copy(List<SMTConstructedObject> arguments) {
		return new Not(arguments);
	}

	@Override
	public int getId() {
		return operation.getId();
	}

	public Operation getOperation() {
		return operation;
	}

	@Override
	public List<SMTConstructedObject> getAllSymbolicArguments() {
		return operation.getAllSymbolicArguments();
	}

}
