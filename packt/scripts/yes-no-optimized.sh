#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Dealing with yes/no answers, smarter this time!
# Usage: ./yes-no-optimized.sh
#####################################

read -p "Do you like this question? " reply_variable

# See if the user responded positively
if [[ ${reply_variable,,} = 'y' || ${reply_variable,,} = 'yes' ]]; then
  echo "Great, I worked really hard on it!"
  exit 0
fi

# Maybe the user responded negatively
if [[ ${reply_variable^^} = 'N' || ${reply_variable^^} = 'NO' ]]; then
  echo "You did not? But, I worked so hard on it!"
  exit 0
fi

# If we get here, the user did not give a proper answer
echo "Please use yes/no!"

exit 1