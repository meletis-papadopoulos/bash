#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Verify argument length, with a chant!
# Usage: ./acronym-chant.sh <three-letter-acronym>
#####################################

# Use full syntax for passed arguments
if [[ ${#*} -ne 1 ]]; then
  echo "Incorrect number of arguments!"
  echo "Usage: ${0} <three-letter-acronym>"
  exit 1
fi

# No need to default anything because of the check above
acronym=${1}

# Check acronym length using parameter expansion
if [[ ${#acronym} -ne 3 ]]; then
  echo "Acronym should be exactly three letters!"
  exit 2
fi

# Split the string into three letters using substring expansion
first_letter=${acronym:0:1}
second_letter=${acronym:1:1}
third_letter=${acronym:2:1}

# Print our chant
echo "Give me the ${first_letter^}!"
echo "Give me the ${second_letter^}!"
echo "Give me the ${third_letter^}!"

echo "What does that make? ${acronym^^}!"

exit 0