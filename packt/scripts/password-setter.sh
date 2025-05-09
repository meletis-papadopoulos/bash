#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Set a password using 'chpasswd'
# Usage: ./password-setter.sh
#####################################

NEW_USER_NAME="bob"

# Verify this script is run with 'root' privileges
if [[ ${UID} -ne 0 ]]; then
  echo "Please run as root or with sudo!"
  exit 1
fi

# We only need exit status, send all output to '/dev/null'
id -u ${NEW_USER_NAME} &> /dev/null

# Check if we need to create the user
if [[ ${?} -ne 0 ]]; then
  # User does not exist, create
  useradd -m ${NEW_USER_NAME}
fi

# Set the password for the user
echo "${NEW_USER_NAME}:password" | chpasswd

exit 0