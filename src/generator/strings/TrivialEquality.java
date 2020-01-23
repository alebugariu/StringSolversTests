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

import generator.operations.Operation;
import generator.operations.connectors.SMTElement;
import generator.strings.types.SMTConstructedObject;

public class TrivialEquality {

	private SMTElement equality;
	private List<SMTConstructedObject> additionalQuantifiedVariables = new ArrayList<SMTConstructedObject>();
	private Operation additionalTrigger;

	public TrivialEquality(SMTElement equality) {
		this.equality = equality;
	}

	public TrivialEquality(SMTElement equality, List<SMTConstructedObject> additionalQuantifiedVariables,
			Operation additionalTrigger) {
		this.equality = equality;
		this.additionalQuantifiedVariables = additionalQuantifiedVariables;
		this.additionalTrigger = additionalTrigger;
	}

	public SMTElement getEquality() {
		return equality;
	}

	public List<SMTConstructedObject> getAdditionalVariables() {
		return additionalQuantifiedVariables;
	}

	public Operation getAdditionalTrigger() {
		return additionalTrigger;
	}

}
