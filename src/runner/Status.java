/*******************************************************************************
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 * 
 * Copyright (c) 2019-2020 ETH Zurich.
 ******************************************************************************/
package runner;

public enum Status {
	unknown, unsat, sat, timeout, incorrect_model, incorrect_unsat_core, error, big_model;

	public static Status getStatus(String statusAsString) {
		if (statusAsString.startsWith(sat.name())) {
			return sat;
		}
		if (statusAsString.startsWith(unsat.name())) {
			return unsat;
		}
		if (statusAsString.startsWith(unknown.name())) {
			return unknown;
		}
		if (statusAsString.startsWith(timeout.name())) {
			return timeout;
		}
		if (statusAsString.startsWith(incorrect_model.name())) {
			return incorrect_model;
		}
		if (statusAsString.startsWith(incorrect_unsat_core.name())) {
			return incorrect_unsat_core;
		}
		if (statusAsString.startsWith(error.name())) {
			return error;
		}
		// this branch should not be possible
		return null;
	}
}
