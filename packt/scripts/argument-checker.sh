#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Validate the "check_arguments" library function
# Usage: ./argument-checker.sh <argument1> <argument2>
#####################################

source ./bash-function-library.sh

# Check user input
# Use double quotes "" around "$@", to prevent word splitting
check_arguments 2 "$@" || \
  { echo "Incorrect usage! Usage: ${0} <argument1> <argument2>"; exit 1; }

# Arguments are correct, print them
echo "Your arguments are: ${1} and ${2}"

exit 0