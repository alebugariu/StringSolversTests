# String Solver Tests
This repository provides the artifact for the paper: "Automatically Testing String Solvers", A. Bugariu and P. Müller, ICSE'20 [To appear]. 
The tool synthesizes input formulas in SMT-LIB 2.6 format that are satisfiable or unsatisfiable by construction, together with 
a model, or the minimal unsat core, respectively. These inputs are then used for testing the implementation of 
SMT and automata-based string solvers. Our generated test cases, the SMT-LIB encoding of the examples from the paper and the 
results we obtained for the solvers under test can be found in the folder [experiments](/experiments).

# Requirements 
The tool has been tested on Ubuntu 16.04 with Java 8.

# Setup
Clone our repository:

```
git clone https://github.com/alebugariu/StringSolversTests.git StringSolversTests
cd StringSolversTests
chmod +x install.sh
```

Set the directory where the solvers should be downloaded, by changing the default value for ```ROOT=~/icse513``` in install.sh.

Run the script install.sh: 
```
./install.sh
```
The script runs for ~25 min and performs the following steps:
* creates a folder ROOT/SMTSolvers in which:
  + it downloads [Z3](https://github.com/Z3Prover/z3) version 4.7.1, applies a patch for supporting the operations int.to.str and str.to.int from the Java API and 
  builds the solver from sources with the Java bindings.
  + it downloads [Z3](https://github.com/Z3Prover/z3) version 4.8.6.
  + it downloads [CVC4](https://cvc4.github.io/) version 1.6.
  + it downloads [CVC4](https://cvc4.github.io/) version 1.7.
* creates a config.txt file in our project, containg the paths to the SMT solvers previously downloaded. The config file follows
the [template](/src/config_template.txt). 
* creates a folder ROOT/AutomataBasedSolvers in which it downloads and builds the automata-based solver 
[ABC](https://github.com/vlab-cs-ucsb/ABC) (the [commit](https://github.com/vlab-cs-ucsb/ABC/commit/86b00141fddd183de7b9ae5c92c240e19dda1950) used in our experiments) 
and its dependencies.
* compiles our project.

# Usage
To check that the installation is succesfull and to run our tool:
```
chmod +x run.sh
./run.sh
```
This should output the supported options.
More information about our bechnmarks and details on how to use the tool to (re)run our experiments can be found [here](/EXPERIMENTS.md).

