#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Check if a user account is locked

# Notes:  

# Use 'passwd -S', command to retrieve the status of the account:
# P: Password is set, and the account is active
# L: The account is locked (disabled)
# NP: No password is set (this doesn't necessarily mean the account is locked)
# PS: Password is set and the account is active
# LK: The account is locked and cannot be used for login

# Check is user is root
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root"
  exit 1
fi

# Check argument
if [[ -z "${1}" ]]; then
  echo "Usage: ${0} <username>"
  exit 1
fi

user=${1}

# Check if user exists in the system
if ! id "${user}" &> /dev/null; then
  echo "User ${user} does not exist"
  exit 2
fi

# Get account status and check if it's locked
user_status=$(passwd -S "${user}" | awk '{print $2}')

if [[ "${user_status}" == "LK" ]]; then
  echo "The account '${user}' is disabled"
else
  echo "The account '${user}' is active"
fi

exit 0