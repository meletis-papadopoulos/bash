#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Example of a 'for' loop in C-style syntax
# Usage: ./for-counter.sh
#####################################

# This loop runs 10 times
for ((counter=1; counter<=10; counter++)); do
  echo "Hello! This is loop number ${counter}"
  sleep 1
done

# After the 'for-loop' finishes, print a message
echo "All done!"

exit 0