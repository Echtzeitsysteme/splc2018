#!/bin/bash

#
# This script sets up an environment to run the Coala application for reproducing the paper results
# 
# How to customize
# ----------------
#
# 1. Create a copy named 'coala_run.bash'
# 2. Adjust PATH_SEP to your operating system.
# 3. Adjust all environment variables marked with 'TODO_ADJUST_ME'
# 4. Make sure that 'java' is on your PATH (via 'java -version').
# 5. Use the following instructions to test the setup (e.g., via 'bash coala_run.bash --help').
#
# These steps have been tested on Windows using the Git Bash emulation.
# If you encounter problems, we ask you to create an issue on GitHub.
#
# Examples
# --------
# bash coala_run.bash --help
# # Get help.
# bash coala_run.bash -d
# # This produces the configuration files for the planned batch run, but does not start the batch run, yet.
# bash coala_run.bash -r 1-100 -u myuniqueid_ -t 4 -x 2000
# # This runs configurations with ID 1..100 with the unique prefix 'myuniqueid_' and 4 parallel processes and 2000MB JVM memory (-Xmx) per process
#
# Test setups
# -----------
# bash coala_run.bash -r 1-1
# # For MiniSAT
# bash coala_run.bash -r 6-6
# # For CPLEX
#
# Author: Roland Kluge
#

# ';' on Linux and ';' on Windows
PATH_SEP=";"

# 'CPLEX_LIB_PATH' points to the directory containing the CPLEX DLL/Shared Object
# On Windows, this path typically ends with 'x64_win64'
export CPLEX_LIB_PATH="TODO_ADJUST_ME"

# 'CPLEX_JAR_PATH' points to the 'cplex.jar' file.
# This path usually has the form 'CPLEX_HOME/cplex/cplex/lib/cplex.jar'
CPLEX_JAR_PATH="TODO_ADJUST_ME"

# 'MINISAT_EXEC_PATH' points to the executable binary of MiniSAT
export MINISAT_EXEC_PATH="TODO_ADJUST_ME"

# Run!
# ('java' should be on PATH)
java -cp "coala.jar${PATH_SEP}resources${PATH_SEP}${CPLEX_JAR_PATH}" de.tudarmstadt.maki.simonstrator.peerfact.application.sensor.wsntraces.TopologyControlReconfigurationPaperEvaluationExecutor $@
