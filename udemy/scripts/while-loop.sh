#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Work with while loop

# Usage: ./while-loop process

process=${1}

# Check if argument is passed
if [[ -z "${1}" ]]; then
  echo "Error: No process name was provided."
  exit 1
fi

count=0
num=10

while [[ ${count} -lt 10 ]]
do
  echo "${num} seconds left to stop process '${1}'"
  sleep 1
  num=$(expr ${num} - 1)
  count=$(expr ${count} + 1)
done

echo "Process '${1}', is now stopped!"

exit 0