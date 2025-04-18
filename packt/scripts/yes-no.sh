#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Dealing with yes/no answers
# Usage: ./yes-no.sh
#####################################

read -p "Do you like this question? " reply_variable

# See if the user responded positively
if [[ ${reply_variable} = 'y'   ||
      ${reply_variable} = 'Y'   ||
      ${reply_variable} = 'yes' ||
      ${reply_variable} = 'YES' ||
      ${reply_variable} = 'Yes' ]]; then
  echo "Great!, I worked really hard on it!"
  exit 0
fi

if [[ ${reply_variable} = 'n'  ||
      ${reply_variable} = 'N'  ||
      ${reply_variable} = 'no' ||
      ${reply_variable} = 'NO' ||
      ${reply_variable} = 'No' ]]; then
  echo "You did not? But, I worked really hard on it!"
  exit 0
fi

# If we get here, the user did not give a proper answer
echo "Please use yes/no!"

exit 1