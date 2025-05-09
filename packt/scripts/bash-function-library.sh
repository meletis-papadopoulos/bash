#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Bash function library
# Usage: source ~/bash-function-library.sh
#####################################

# Check if the number of arguments supplied is exactly correct
check_arguments() {
  # We need at least 1 argument
  if [[ ${#} -lt 1 ]]; then
    echo "Less than 1 argument received, exiting"
    exit 1
  fi

  # Deal with arguments
  expected_arguments=${1}
  # Remove the first argument
  shift 1

  if [[ ${expected_arguments} -ne ${#} ]]; then
    # Return exit status "1"
    return 1
  fi
}

# Set the current working directory to the script location
set_cwd() {
  cd $(dirname ${0})
}

# Check if the argument is an integer
check_integer() {
  # Input validation
  if [[ ${#} -ne 1 ]]; then
    echo "Need exactly 1 argument, exiting"
    # No validation done, exit script
    exit 1
  fi

  # Check if the input if an integer
  if [[ ${1} =~ ^[[:digit:]]+$ ]]; then
    # Is an integer
    return 0
  else
    # Is not an integer
    return 1
  fi
}

# Check if the user answered 'yes', or 'no'
check_yes_no() {
  # Input validation
  if [[ ${#} -ne 1 ]]; then
    echo "Need exactly one argument, exiting"
    # No validation done, exit script
    exit 1
  fi

  # Return '0' for 'yes', '1' for 'no', or 'exit 2' for neither
  if [[ ${1,,} = 'y' || ${1,,} = 'yes' ]]; then
    return 0
  elif [[ ${1,,} = 'n' || ${1,,} = 'no' ]]; then
    return 1
  else
    echo "Neither yes or no, exiting"
    exit 2
  fi
}

# exit 0