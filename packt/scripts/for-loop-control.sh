#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Loop control in a 'for' loop
# Usage: ./for-loop-control.sh
#####################################

# Generate a random number from '1-10'
random_number=$(( (RANDOM % 10) + 1 ))

# Iterate over all possible random numbers
for number in {1..10}; do
  if [[ ${number} -eq ${random_number} ]]; then
    echo "Random number found: ${random_number}"
    # Stop, as soon as we have found the number
    break
  fi
  # If we get here the number did not match
  echo "Number does not match: ${number}"
done

echo "Number has been found, all done!"

exit 0