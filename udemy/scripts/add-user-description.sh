#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Check if user account already exists, otherwise create it with user description

# Check if user is root
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root user"
  exit 1
fi

read -p "Please provide a username: " user_name

check_user_existence="$(grep -i ${user_name} /etc/passwd)"

# If string is not empty, user exists!
if [[ ! -z ${check_user_existence} ]]; then
  echo "Error: Username '${user_name}' already exist!"
  exit 1
else
  printf "\n"
  read -p "Please provide a description for the user: " description
  printf "\n"
  echo "Creating user '${user_name}'..."
  # String may contain spaces
  useradd ${user_name} -c "${description}"
  echo "Account for user '${user_name}' has been created!"
fi

exit 0