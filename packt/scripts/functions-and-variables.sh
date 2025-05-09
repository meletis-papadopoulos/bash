#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Show different variable scopes
# Usage: ./functions-and-variables.sh <input>
#####################################

# Check if the user supplied at least one argument
if [[ ${#} -eq 0 ]]; then
  echo "Missing an argument!"
  echo "Usage: ${0} <input>"
  exit 1
fi

# Assign the input to a variable
input_variable=${1}

# Create a CONSTANT, which never changes
CONSTANT_VARIABLE="constant"

# Define the function
hello_variable() {
  local CONSTANT_VARIABLE="maybe not so constant?"
  echo "This is the input variable: ${input_variable}"
  echo "This is the constant: ${CONSTANT_VARIABLE}"
  # echo "This is the function variable: ${FUNCTION_VARIABLE}"
}

# Call the function
hello_variable

# Try to call the function variable outside the function
echo "Function variable outside function: ${CONSTANT_VARIABLE}"

exit 0