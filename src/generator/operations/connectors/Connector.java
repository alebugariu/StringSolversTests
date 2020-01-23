/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.connectors;

import java.util.List;

import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;

import generator.strings.types.SMTConstructedObject;
import generator.strings.utils.SMTStringUtils;

public abstract class Connector extends SMTElement {
	protected SMTElement left;
	protected SMTElement right;

	protected Connector(SMTElement left, SMTElement right) {
		this.left = left;
		this.right = right;
		this.left.enclosingElement = this;
		this.right.enclosingElement = this;
	}

	@Override
	public List<SMTConstructedObject> getAllSymbolicArguments() {
		List<SMTConstructedObject> leftSymbolicArguments = left.getAllSymbolicArguments();
		List<SMTConstructedObject> rightSymbolicArguments = right.getAllSymbolicArguments();
		return SMTStringUtils.unionWithoutDuplicates(leftSymbolicArguments, rightSymbolicArguments);
	}

	@Override
	public List<SMTConstructedObject> getConstantArguments() {
		List<SMTConstructedObject> leftConstantArguments = left.getConstantArguments();
		List<SMTConstructedObject> rightConstantArguments = right.getConstantArguments();
		return SMTStringUtils.unionWithoutDuplicates(leftConstantArguments, rightConstantArguments);
	}

	@Override
	public List<SMTConstructedObject> getAllArguments() {
		List<SMTConstructedObject> leftArguments = left.getAllArguments();
		List<SMTConstructedObject> rightArguments = right.getAllArguments();
		leftArguments.addAll(rightArguments);
		return leftArguments;
	}

	@Override
	public List<SMTConstructedObject> getWitnesses() {
		List<SMTConstructedObject> leftWitnesses = left.getWitnesses();
		List<SMTConstructedObject> rightWitnesses = right.getWitnesses();
		return SMTStringUtils.unionWithoutDuplicates(leftWitnesses, rightWitnesses);
	}

	public Expr toSMT(Context ctx) {
		return null;
	}

	@Override
	protected boolean isEquivalentTo(SMTElement other) {
		if (this.getClass() != other.getClass()) {
			return false;
		}
		Connector otherConnector = (Connector) other;
		return this.left.isEquivalentTo(otherConnector.left) && this.right.isEquivalentTo(otherConnector.right);
	}

	public SMTElement getLeft() {
		return left;
	}

	public SMTElement getRight() {
		return right;
	}

}
