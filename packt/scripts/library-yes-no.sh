#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Doing yes-no questions from our library
# Usage: ./library-yes-no.sh
#####################################

# Load our Bash function library
source ./bash-function-library.sh

read -p "Do you like this question? " reply_variable

check_yes_no ${reply_variable} && \
  echo "Great, I worked really hard on it!" || \
  echo "You did not? But I worked so hard on it!"

exit 0