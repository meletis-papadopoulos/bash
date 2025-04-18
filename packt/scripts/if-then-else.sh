#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Use 'if-then-else' construct
# Usage: ./if-then-else.sh
#####################################

FILE="/tmp/random_file.txt"

# Check if file exists
if [[ ! -f ${FILE} ]]; then
  echo "File does not exist, stopping the script!"
  exit 1
else
  # Print file content
  cat ${FILE}
fi

# Print file content
cat ${FILE}

exit 0