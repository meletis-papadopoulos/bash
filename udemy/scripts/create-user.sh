#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Create a user account

# Check if user is root
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root user"
  exit 1
fi

read -p "Please provide a username: " user_name
printf "\n"

useradd ${user_name}
echo "Account for user ${user_name} has been created"

exit 0
