#!/usr/bin/env bash

# Create log files for each day of 'Q1
dir="/var/log/app"

# Check if you're root
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root!"
  exit 1
fi

mkdir -p ${dir}/{January/{01..31},February/{01..28},March/{01..31}}
touch ${dir}/{January/{01..31}/daily.log,February/{01..28}/daily.log,March/{01..31}/daily.log}

# Check status
if [[ ${?} -eq 0 ]]; then
  echo "Operation was completed successfully"
else
  echo "An error occurred!"
fi

exit 0