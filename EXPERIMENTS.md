# Our benchmarks

The test cases that we synthesized can be found in the folder [generatedTests](/experiments/generatedTests). They are grouped 
by the expected status, i.e., *sat* or *unsat*. Note that we have separate folders for the random seeds 0 and 1465 (the two values used
in our experiments for running the SMT solvers), to facilitate error reporting. However, our tool is *deterministic*, so 
the synthesized input formulas are the same for both random seeds.

## Sat formulas
The sat formulas are grouped by the category/transformation used to generate them into the following three folders:
* [operation](/experiments/generatedTests/expected_sat/seed0/operation): contains formulas generated in step 1, 
by testing each operation in isolation (see Section 2.1).
* [const](/experiments/generatedTests/expected_sat/seed0/const): contains formulas generated in step 2, 
by applying the constant assignment transformation (see Section 3.1).
* [termSyn](/experiments/generatedTests/expected_sat/seed0/termSyn): contains formulas generated in step 2, 
by applying the term synthesis transformation (see Section 3.1).

All these formulas are quantifier-free. For each sat formula, we also synthesize a possible model, written as a comment at
the end of each test file. Note that we omit the enclosing "" for String values. 

## Unsat formulas
The unsat formulas are grouped by the category/transformation used to generate them into the following folders:
* [eqForm](/experiments/generatedTests/expected_unsat/seed0/eqForm): contains formulas generated in step 1, 
by testing each operation together with its equivalent formula from Table 2 (see Section 2.2).
* [unsatCore](/experiments/generatedTests/expected_unsat/seed0/unsatCore): contains formulas with larger unsat cores,
generated in step 2 by applying the variable and constant replacement transformations (see Section 3.2).
* [redundant](/experiments/generatedTests/expected_unsat/seed0/redundant): contains formulas generated in step 2, 
by applying the redundancy introduction transformation (see Section 3.2).

All the quantified formulas from these folders **do not** contain patterns (triggers) for quantifiers. The corresponding 
formulas with the patterns specified in Table 2 can be found in the folders [eqFormTriggers](/experiments/generatedTests/expected_unsat/seed0/eqFormTriggers),
[unsatCoreTriggers](/experiments/generatedTests/expected_unsat/seed0/unsatCoreTriggers) and [redundantTriggers](/experiments/generatedTests/expected_unsat/seed0/redundantTriggers), 
respectively. For each unsat formula, we also generate the minimal unsat core, written as a comment at the end of each test file.

## MT-ABC tests
The folder [abcTests](/experiments/abcTests) includes a modified subset of our benchmarks, that contains only the features supported by MT-ABC (see Section 4.3).

# Examples

The folder [examples](/experiments/examples) contains the test cases that correspond to the examples from the listings and 
the figures of the paper. At the end of each file, we also include the actual status returned by the solver, and the model or the unsat core it produced, if available.

# Results

All the tests that passed or failed for each version of the solvers considered in our experiments (i.e., 4.7.1 and 4.8.6 for the Z3-based solvers, 1.6 and 1.7 for CVC4, and [commit](https://github.com/vlab-cs-ucsb/ABC/commit/86b00141fddd183de7b9ae5c92c240e19dda1950) for MT-ABC) can be found in the corresponding folders: [passingTests](/experiments/passingTests) and [failingTests](/experiments/failingTests), respectively.
The results presented in Tables 4, 6 and 7 are based on the values from the folder [statistics](/experiments/statistics).
