#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Print or list the given path, depending on type
# Usage: ./nested-print-or-list.sh <file or directory path>
#####################################

# Set current working directory
cd $(dirname ${0})

# Input validation
if [[ ${#} -ne 1 ]]; then
  echo "Incorrect usage!"
  echo "Usage: ${0} <file or directory path>"
  exit 1
fi

input_path=${1}

# Check if the file can be read
if [[ -r ${input_path} ]]; then
  # File can be read, now determine what type it is
  if [[ -f ${input_path} ]]; then
    echo "File found, showing content:"
    cat ${input_path}
  elif [[ -d ${input_path} ]]; then
    echo "Directory found, listing:"
    ls -l ${input_path}
  else
    echo "Path is neither a file nor a directory, exiting script"
    exit 1
  fi
else
  # File cannot be read, print an error
  echo "Cannot read the file/directory, exiting script"
  exit 1
fi

exit 0