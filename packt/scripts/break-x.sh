#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Breaking out of nested loops
# Usage: ./break-x.sh
#####################################

while true; do
  echo "This is the outer loop"
  sleep 1

  for iteration in {1..3}; do
    echo "This is the inner loop ${iteration}"
    if [[ ${iteration} -eq 2 ]]; then
      # Break out of the outer 'while-true' loop
      break 2
    fi
    sleep 1
  done
done

echo "This is the end of the script!"

exit 0