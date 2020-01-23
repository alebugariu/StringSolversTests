/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.connectors;

import java.util.List;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;

import generator.strings.types.SMTConstructedObject;
import generator.strings.utils.SMTStringUtils;

public class IfThenElse extends SMTElement {

	private SMTElement ifClause;
	private SMTElement thenClause;
	private SMTElement elseClause;

	public IfThenElse(SMTElement ifClause, SMTElement thenClause, SMTElement elseClause) {
		this.ifClause = ifClause;
		this.thenClause = thenClause;
		this.elseClause = elseClause;
	}

	@Override
	protected BoolExpr smtFormula(Context ctx) {
		BoolExpr ifFormula = ifClause.smtFormula(ctx);
		BoolExpr thenFormula = thenClause.smtFormula(ctx);
		BoolExpr elseFormula = elseClause.smtFormula(ctx);
		return (BoolExpr) ctx.mkITE(ifFormula, thenFormula, elseFormula);
	}

	@Override
	public Expr toSMT(Context ctx) {
		return null;
	}

	@Override
	public List<SMTConstructedObject> getAllSymbolicArguments() {
		List<SMTConstructedObject> ifSymbolicArguments = ifClause.getAllSymbolicArguments();
		List<SMTConstructedObject> thenSymbolicArguments = thenClause.getAllSymbolicArguments();
		List<SMTConstructedObject> elseSymbolicArguments = elseClause.getAllSymbolicArguments();
		return SMTStringUtils.unionWithoutDuplicates(
				SMTStringUtils.unionWithoutDuplicates(ifSymbolicArguments, thenSymbolicArguments),
				elseSymbolicArguments);
	}

	@Override
	public List<SMTConstructedObject> getConstantArguments() {
		List<SMTConstructedObject> ifConstantArguments = ifClause.getConstantArguments();
		List<SMTConstructedObject> thenConstantArguments = thenClause.getConstantArguments();
		List<SMTConstructedObject> elseConstantArguments = elseClause.getConstantArguments();
		return SMTStringUtils.unionWithoutDuplicates(
				SMTStringUtils.unionWithoutDuplicates(ifConstantArguments, thenConstantArguments),
				elseConstantArguments);
	}

	@Override
	public List<SMTConstructedObject> getAllArguments() {
		List<SMTConstructedObject> ifArguments = ifClause.getAllArguments();
		List<SMTConstructedObject> thenArguments = thenClause.getAllArguments();
		List<SMTConstructedObject> elseArguments = elseClause.getAllArguments();

		List<SMTConstructedObject> allArguments = ifArguments;
		allArguments.addAll(thenArguments);
		allArguments.addAll(elseArguments);
		return allArguments;
	}

	@Override
	public List<SMTConstructedObject> getWitnesses() {
		List<SMTConstructedObject> ifWitnesses = ifClause.getWitnesses();
		List<SMTConstructedObject> thenWitnesses = thenClause.getWitnesses();
		List<SMTConstructedObject> elseWitnesses = elseClause.getWitnesses();
		return SMTStringUtils.unionWithoutDuplicates(SMTStringUtils.unionWithoutDuplicates(ifWitnesses, thenWitnesses),
				elseWitnesses);
	}

	@Override
	public SMTElement copy() {
		SMTElement ifCopy = ifClause.copy();
		SMTElement thenCopy = thenClause.copy();
		SMTElement elseCopy = elseClause.copy();
		return new IfThenElse(ifCopy, thenCopy, elseCopy);
	}

	@Override
	protected boolean isEquivalentTo(SMTElement other) {
		// TODO Auto-generated method stub
		return false;
	}

}
