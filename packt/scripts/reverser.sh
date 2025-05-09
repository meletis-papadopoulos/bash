#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Reverse the input for the uesr
# Usage: ./reverser.sh <input-to-be-reversed>
#####################################

# Check if the user supplied 1 argument
if [[ ${#} -ne 1 ]]; then
  echo "Incorrect number of arguments!"
  echo "Usage: ${0} <input-to-be-reversed>"
  exit 1
fi

# Capture the user input in a variable
# Add "_" for readability
user_input="_${1}_"

# Define the reverser function
reverser() {
  # Check if input is correctly passed
  if [[ ${#} -ne 1 ]]; then
    echo "Supply 1 argument to reverser()"
    exit 1
  fi

  # Return the reversed input to 'stdout' (default for 'rev')
  rev <<< ${1}
}

# Capture the function output via command substitution
reversed_input=$(reverser ${user_input})

# Show the reversed input to the user
echo "Your reversed input is: ${reversed_input}"

exit 0