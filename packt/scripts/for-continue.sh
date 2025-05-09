#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: 'For' syntax with a continue statement
# Usage: ./for-continue.sh
#####################################

# Look at numbers '1-20' in step of '2'
for number in {1..20..2}; do
  if [[ $((${number}%5)) -eq 0 ]]; then
    # Unlucky number, skip this!
    continue
  fi

  # Show to the user which number we've processed
  echo "Looking at number: ${number}"
done

exit 0