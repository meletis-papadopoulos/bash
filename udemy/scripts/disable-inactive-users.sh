#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Disable inactive users using a for loop

# Check if your root user
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root"
  exit 1
fi

users_to_disable=$(lastlog | tail -n+2 | grep -i 'test' | awk '{print $1}')

for user in ${users_to_disable}
do
  echo "User: '${user}'"
  # Disable user
  usermod -L ${user}
  echo "User account '${user}' has been disabled"
  printf "\n"
done

exit 0