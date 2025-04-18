#!/usr/bin/env bash

# Check if passwd file exists
file="/etc/passwd"

if [[ -e ${file} ]]; then
  tail -n 3 ${file}
else
  echo "File does not exist!"
  exit 1
fi

exit 0