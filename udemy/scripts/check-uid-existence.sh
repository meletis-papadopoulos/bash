#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Check if UID is already in use

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
  read -p "Please provide a description for the user: " description
  read -p "Do you want to specify the user id (y/n)? " reply
  if [[ ${reply} == "y" ]]; then
    read -p "Please enter the UID: " uid
    # Check if UID already exists
    check_uid_existence="$(grep -i "${uid}" /etc/passwd | awk -F ":" {'print $3}')"
    if [[ ${check_uid_existence} ]]; then
      echo "UID '${uid}' is already taken. Please choose a different UID"
      exit 1
    else
      # UID is available
      echo "Creating user... '${user_name}'"
      useradd ${user_name} -c "${description}" -u ${uid}
      fi
  elif [[ ${reply} == "n" ]]; then
    echo "A user id 'UID' will be provided automatically!"
    echo "Creating user '${user_name}..."
    # String may contain spaces
    useradd ${user_name} -c "${description}"
    echo "Account for '${user_name}' has been created"
  else
    echo "Wrong input! Exiting script..."
    exit 1
  fi
fi

exit 0