#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Some printed text, now with colors!
# Usage: ./colorful.sh
#####################################

print_colored() 
{
  # Check if the function was called with the correct arguments
  if [[ ${#} -ne 2 ]]; then
    echo "print_colored needs 2 arguments, exiting"
    exit 1
  fi

  # Grab both arguments
  local string=${1}
  local color=${2}

  # Use a case-statement to determine the color code
  case ${color} in
    red)
      local color_code="\e[31m";;
    blue)
      local color_code="\e[34m";;
    green)
      local color_code="\e[32m";;
    *)
      # Wrong color, use default
      local color_code="\e[39m";; 
  esac

  # Perform the 'echo', and reset color to 'default' with '[39m'
  echo -e ${color_code}${string}"\e[39m"
}

# Print the text in different colors
print_colored "Hello, World!" "red"
print_colored "Hello, World!" "blue"
print_colored "Hello, World!" "green"
print_colored "Hello, World!" "magenta"

exit 0