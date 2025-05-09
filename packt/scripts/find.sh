#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Find a file
# Usage: ./find.sh <file-name>
#####################################

# Check for the current number of arguments
if [[ ${#} -ne 1 ]]; then
  echo "Wrong number of arguments!"
  echo "Usage: ${0} <file-name>"
  exit 1
fi

# Name of the file to search for
file_name=${1}

# Redirect all errors to '/dev/null', so they don't clutter the terminal
find / -name "${file_name}" 2> /dev/null

exit 0