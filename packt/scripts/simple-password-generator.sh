#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Use command substitution with a variable
# Usage: ./simple-password-generator.sh
#####################################

# Write a random string to a variable using command substitution
random_password=$(tr -dc 'a-zA-Z0-9' < /dev/urandom | head -c 20)

echo "You random password is: ${random_password}"

exit 0