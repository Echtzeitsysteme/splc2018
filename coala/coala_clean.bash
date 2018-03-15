#!/bin/bash

#
# Removes all files generated during the simulation
# 
# Author: Roland Kluge
#

scriptDir=$(cd $(dirname $0); pwd);
rm -rf $scriptDir/output
rm -rf $scriptDir/simlog