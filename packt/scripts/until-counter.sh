#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Example of an 'until' loop with a counter
# Usage: ./until-counter.sh
#####################################

# Define the counter outside of the loop, so we don't reset it for every run in the loop
counter=0

# This loop runs 10 times
until [[ ${counter} -gt 9 ]]; do
  # Increment the counter by 1
  counter=$((counter+1))
  echo "Hello! This is loop number ${counter}"
  sleep 1
done

# After the loop finishes, print a message
echo "All done!"

exit 0