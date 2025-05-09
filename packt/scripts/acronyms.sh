#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Verify argument length
# Usage: ./acronyms.sh <three-letter-acronym>
#####################################

# ${#parameter}
# Parameter length. The length in characters of the value of parameter is substituted
# If parameter is * or @, the value substituted is the number of positional parameters

# Use full syntax for passed arguments check
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

# All check passed, we should be good
echo "Your chosen three letter acronym is: ${acronym}"

exit 0