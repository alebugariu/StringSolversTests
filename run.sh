#!/bin/bash

eval `cat install.sh | grep "^ROOT="`

PATH_SMTSolvers=$ROOT/SMTSolvers
PATH_SolversTests="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )"
  
# run our tool:
export LD_LIBRARY_PATH=$PATH_SMTSolvers/z3_4.7.1/build

cd $PATH_SolversTests
java -Djava.library.path=$PATH_SMTSolvers/z3_4.7.1/build -cp "classes:jars/commons-lang3-3.7.jar:jars/commons-io-2.6.jar:jars/commons-cli-1.4.jar:$PATH_SMTSolvers/z3_4.7.1/build/com.microsoft.z3.jar" runner.Main $*
