#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Example of an infinite 'for' loop
# Usage: ./for-infinite.sh
#####################################

# Infinite for loop
for ((;;)); do
  echo "Hello!"
  # Wait for 1 second
  sleep 1
done

exit 0