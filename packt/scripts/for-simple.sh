#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Simple 'for' syntax
# Usage: ./for-simple.sh
#####################################

# Create a 'list'
words="house dog telephone dog"

# Iterate over the list and process the values
for word in ${words}; do
  echo "The word is: ${word}"
done

exit 0