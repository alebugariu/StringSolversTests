# Our benchmarks

The test cases that we synthesized can be found in the folder [generatedTests](/experiments/generatedTests). They are grouped 
by the expected status, i.e., *sat* or *unsat*. Note that we have separate folders for the random seeds 0 and 1465 (the two values used
in our experiments for running the SMT solvers), to facilitate error reporting. However, our tool is *deterministic*, so 
our generated tests are the same for both random seeds, they only differ in the option line ```(set-option :random-seed <value>)```.

### Sat formulas
The sat formulas are grouped by the category/transformation used to generate them into the following three folders:
* [operation](/experiments/generatedTests/expected_sat/seed0/operation): contains formulas generated in step 1, 
by testing each operation in isolation (see Section 2.1).
* [const](/experiments/generatedTests/expected_sat/seed0/const): contains formulas generated in step 2, 
by applying the constant assignment transformation (see Section 3.1).
* [termSyn](/experiments/generatedTests/expected_sat/seed0/termSyn): contains formulas generated in step 2, 
by applying the term synthesis transformation (see Section 3.1).

All these formulas are quantifier-free. For each sat formula, we also synthesize a possible model, written as a comment at
the end of each test file. Note that we omit the enclosing "" for String values. For example, the lines: 
```
;tmp_str1 = 
;tmp_str2 = a
``` 
from the [test file](/experiments/examples/listing1/z3_seq/test1558798332234_replace_const_2_12.smt2) for the replace operation correspond to the model ```tmp_str1 = ""``` and ```tmp_str2 = "a"```.

### Unsat formulas
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
respectively. For each unsat formula, we also generate the minimal unsat core, written as a comment at the end of each test file. For example, the expected minimal unsat core for the replace formula from the [test file](/experiments/examples/figure7/z3_str3/test1563370927043_replace_unsatCore_3_7_0.smt2) consists of the assertions: ```a0```, ```a1``` and ```a2```:
```
;unsat core: a0 a1 a2
```

### MT-ABC tests
The folder [abcTests](/experiments/abcTests) contains a modified subset of our benchmarks, including only the features supported by MT-ABC (see Section 4.3).

# StringFuzz benchmarks

# Examples

The folder [examples](/experiments/examples) contains the test cases that correspond to the examples from the listings and 
the figures of the paper. At the end of each file, we also include the actual status returned by the solver, and the model or the unsat core it produced, if available.

# Results

All the tests that passed or failed for each version of the solvers considered in our experiments (i.e., 4.7.1 and 4.8.6 for the Z3-based solvers, 1.6 and 1.7 for CVC4, and [commit](https://github.com/vlab-cs-ucsb/ABC/commit/86b00141fddd183de7b9ae5c92c240e19dda1950) for MT-ABC) can be found in the corresponding folders: [passingTests](/experiments/passingTests) and [failingTests](/experiments/failingTests), respectively.
The results presented in Tables 4, 6 and 7 are based on the values from the folder [statistics](/experiments/statistics).

# Experiments

In the following, we describe the steps required to reproduce our experimental results:

1) To generate our benchmarks: ```./run.sh -gen```. This will generate all our 7036 benchmarks in **~1 min**, in the folder StringSolversTests/generatedTests. Note that all the tests will include ```(set-option :random-seed 0)```, as the default random seed is 0. This parameter can be changed by using the option ```-seed <value>``` when running our tool. The generated input formulas should be the same as in our experiements (see [generatedTests](/experiments/generatedTests)). Note that for some tests, the names of the variables might differ, as we changed the naming algorithm since the submission. Moreover, the let expressions are automatically generated by the Z3 4.7.1 parser that we use to write the .smt files and we observed that it sometimes chooses different names for the temporary variables it introduces. 

2) To test Z3-seq 4.7.1, Z3str3 4.7.1 and CVC4 1.6 on all our benchmarks, i.e., to reproduce the results from Table 4: ```./run.sh -testSMT -prior```. This experiment will run for **~6h**, as it uses the default timeout of 15s per test case and the default value for the random seed 0 used in our evaluation. These parameters can be changed by using the options ```-seed <value> -timeout <value>``` when running our tool. All the failing tests and the corresponding actual status will be printed to the console. Moreover, all the tests that passed will be stored in the folder StringSolversTests/passingTests and all the ones that failed in the folder StringSolversTests/failingTests. At the end of the experiment, three results files will be generated for each solver, corresponding to the results for the sat formulas, unsat formulas without patterns and unsat formulas with patterns (unsat [+p] in Table 4). For example, the file StringSolversTests/statistics\<current_time\>_z3_seq_unsat_triggers.txt will contain the results for Z3-seq tested on all the unsat formulas, using patterns for the quantified ones. The numbers from the results files should be the same as those from Table 4 for CVC4 and may be slighlty different for the Z3-based solvers; as discussed in the paper, these solvers may have non-deterministic behavior. To further test the robustness of the solvers and to reproduce the results discussed in Section 4.1 (Subsection Other issues): ```./run.sh -testSMT -prior -seed 1465```. This experiment will also run for **~6h**. Note that for a very small number of tests (1-4), the actual status in the results file might be bigModel. This status is *not* included in Table 4. Those cases (discussed in Section 4.1, Subsection Soundness issues) occur when the models generated by the solvers contain mathematical integers larger than the bounded integers supported by our executable semantics. We manually inspected those models and as they were all valid, they are *not* reported as errors in Table 4.

3) To test Z3-seq 4.8.6, Z3str3 4.8.6 and CVC4 1.7 on all the benchmarks that failed on the "prior" version (4.7.1 for Z3-seq and Z3str3 and 1.6 for CVC4), i.e., to reproduce the results from Table 6: ```./run.sh -testSMT -latest```. This experiment uses the same experimental setup and produces the output in the same format as experiment 2.

4) As experiments 2. and 3. are quite long, our tool offers the possibility to *partially* reproduce the results from Tables 4 and 6, by testing a specific version of *a* solver only on the sat formulas, only on the unsat formulas without patterns or only on the unsat formulas with patterns: ```./run.sh -testSolver <Z3-seq/Z3str3/CVC4> -latest/-prior -sat/-unsat [-triggers]```. For example, the command ```./run.sh -testSolver CVC4 -prior -unsat -triggers``` will test CVC4 1.6 on all the unsat formulas, using the patterns specified in Table 2 for the formulas with quantifiers.

5) 
