#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: A simple riddle in a 'while' loop
# Usage: ./while-interactive.sh
#####################################

# Infinite loop, only exits on correct answer
while true; do
  read -p "I have keys but no locks. I have a space but no room. You can enter, but can't go outside. What am I? " answer
  # Use regular expression, so 'keyboard' or 'Keyboard' are valid answers
  if [[ ${answer} =~ [Kk]eyboard ]]; then
    echo "Correct, congratulations!"
    # Exit the 'while' loop
    break
  else
    # Print an error message and go back into the loop
    echo "Incorrect, please try again"
  fi
done

# This will run after the break in the while loop
echo "Now we can continue after the while loop is done, awesome!"

exit 0