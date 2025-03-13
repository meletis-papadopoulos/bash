#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Explain the difference between arguments and parameters
# Usage: ./argument-parameters.sh <arg1> <arg2>
#####################################

param_1=${1}
param_2=${2}

# Print passed arguments
echo "This is the first parameter, passed as an argument: ${param_1}"
echo "This is the second parameter, also passed as an argument: ${param_2}"

exit 0