#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Return the square of the input number
# Usage: ./square-number.sh <number>
#####################################

INPUT_NUMBER=${1}

# Check the number of arguments received
if [[ ${#} -ne 1 ]]; then
  echo "Incorrect usage, wrong number of arguments"
  echo "Usage: ${0} <number>"
  exit 1
fi

# Check to see if the input is a number (from beginning to end!)
if [[ ! ${INPUT_NUMBER} =~ ^[[:digit:]]+$ ]]; then
  echo "Incorrect usage, wrong type of argument"
  echo "Usage: ${0} <number>"
  exit 1
fi

# Multiply the input number with itself and return this to the user
echo $((${INPUT_NUMBER} * ${INPUT_NUMBER}))

exit 0