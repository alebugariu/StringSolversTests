#!/bin/bash

ROOT=~/icse513

PATH_SMTSolvers=$ROOT/SMTSolvers
PATH_SolversTests="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )"
PATH_ABC=$ROOT/AutomataBasedSolvers

mkdir $ROOT
cd $ROOT

# download (and build) the SMT solvers versions used in our experiments in the folder SMTSolvers
mkdir $PATH_SMTSolvers
cd $PATH_SMTSolvers

# Z3
wget https://github.com/Z3Prover/z3/archive/z3-4.7.1.tar.gz
tar -zxvf z3-4.7.1.tar.gz
rm z3-4.7.1.tar.gz
# apply the patch provided by the developers of Z3 in https://github.com/Z3Prover/z3/commit/44a0dbbc6122a83f27ceb8f50f59633c37bf53e6 to add support for int.to.str and str.to.int in the Java API.
patch z3-z3-4.7.1/src/api/java/Context.java $PATH_SolversTests/src/Context.patch
mv z3-z3-4.7.1 z3_4.7.1
cd z3_4.7.1
python scripts/mk_make.py --java
cd build
make

cd $PATH_SMTSolvers
wget https://github.com/Z3Prover/z3/releases/download/z3-4.8.6/z3-4.8.6-x64-ubuntu-16.04.zip
unzip z3-4.8.6-x64-ubuntu-16.04.zip
rm z3-4.8.6-x64-ubuntu-16.04.zip
mv z3-4.8.6-x64-ubuntu-16.04 z3_4.8.6


# CVC4
cd $PATH_SMTSolvers
wget https://cvc4.cs.stanford.edu/downloads/builds/x86_64-linux-opt/cvc4-1.6-x86_64-linux-opt
mv cvc4-1.6-x86_64-linux-opt cvc4
chmod +x cvc4
mkdir cvc4_1.6
mv cvc4 cvc4_1.6/cvc4

cd $PATH_SMTSolvers
wget https://cvc4.cs.stanford.edu/downloads/builds/x86_64-linux-opt/cvc4-1.7-x86_64-linux-opt
mv cvc4-1.7-x86_64-linux-opt cvc4
chmod +x cvc4
mkdir cvc4_1.7
mv cvc4 cvc4_1.7/cvc4

# create the config file
cd $PATH_SolversTests
echo "z3_seq_471 = $PATH_SMTSolvers/z3_4.7.1/build/z3_seq
z3_str3_471 = $PATH_SMTSolvers/z3_4.7.1/build/z3_str3
cvc4_16 =$PATH_SMTSolvers/cvc4_1.6/cvc4
z3_seq_486 = $PATH_SMTSolvers/z3_4.8.6/bin/z3_seq
z3_str3_486 = $PATH_SMTSolvers/z3_4.8.6/bin/z3_str3
cvc4_17 = $PATH_SMTSolvers/cvc4_1.7/cvc4" > src/config.txt

# install the MT-ABC version (commit 86b00141fddd183de7b9ae5c92c240e19dda1950) used in our experiments in the folder AutomataBasedSolvers
mkdir $PATH_ABC
cd $PATH_ABC
git clone --recursive https://github.com/vlab-cs-ucsb/ABC.git ABC
cd ABC
git checkout 86b00141fddd183de7b9ae5c92c240e19dda1950
cd build
./install-build-deps.py # requires sudo


# compile our tool:
cd $PATH_SolversTests
mkdir classes
javac -d classes -cp "jars/commons-lang3-3.7.jar:jars/commons-io-2.6.jar:jars/commons-cli-1.4.jar:$PATH_SMTSolvers/z3_4.7.1/build/com.microsoft.z3.jar" -sourcepath src src/runner/Main.java

export LD_LIBRARY_PATH=$PATH_SMTSolvers/z3_4.7.1/build
