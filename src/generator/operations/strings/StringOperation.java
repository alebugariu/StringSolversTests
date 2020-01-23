/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package generator.operations.strings;

import java.util.List;

import generator.operations.Operation;
import generator.strings.generator.RewritingRule;
import generator.strings.types.SMTConstructedObject;
import generator.strings.utils.SMTStringUtils;

public abstract class StringOperation extends Operation {

	public StringOperation(List<SMTConstructedObject> arguments) {
		super(arguments);
	}

	@Override
	public boolean equals(Object other) {
		if (!(this.getClass() == other.getClass())) {
			return false;
		}
		StringOperation otherOperation = ((StringOperation) other);
		for (int index = 0; index < this.arguments.size(); index++) {
			SMTConstructedObject arg = this.arguments.get(index);
			SMTConstructedObject otherArg = otherOperation.arguments.get(index);
			if (!arg.equals(otherArg)) {
				return false;
			}
		}
		SMTConstructedObject result = this.getResult();
		SMTConstructedObject otherResult = otherOperation.getResult();
		String resultValue = SMTStringUtils.withoutSpecialCharacters(result.getValue());
		String otherResultValue = SMTStringUtils.withoutSpecialCharacters(otherResult.getValue());
		return resultValue.equals(otherResultValue) || result.getWitness().equals(otherResult.getWitness());
	}

	public abstract RewritingRule getRewritingRule();

}
