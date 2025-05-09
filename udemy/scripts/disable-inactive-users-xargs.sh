#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Disable inactive users using 'xargs'

# Check if your root user
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root user"
  exit 1
fi

# Disable user account using xargs
disable_users=$(lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I {} echo {})

# Print list of accounts to disable
echo "The following user accounts will be disabled: ${disable_users}"

lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I {} usermod -L {}

exit 0