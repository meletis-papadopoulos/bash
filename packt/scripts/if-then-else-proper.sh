#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Use 'if-then-else' construct, now properly
# Usage: ./if-then-else.sh
#####################################

file_name=${1}

# Check if file exists
if [[ -f ${file_name} ]]; then
  # Print file content
  cat ${file_name}
else
  echo "File does not exist, stopping the script!"
  exit 1
fi

exit 0