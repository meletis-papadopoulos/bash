#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Check if user account already exists, otherwise create it

# Check if user is root
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root user"
  exit 1
fi

read -p "Please provide a username: " user_name

check_user_existence="$(grep -i ${user_name} /etc/passwd)"

# If variable is empty, user exists!
if [[ ! -z ${check_user_existence} ]]; then
  echo "Error: Username '${user_name}' already exist!"
  exit 1
else
  echo "Creating user '${user_name}'..."
  useradd ${user_name}
  echo "Account for user '${user_name}' has been created!"
fi

exit 0