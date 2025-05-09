#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Remove users from file

# Remove users with UID bigger than '1000', but less than '10000'
cat /etc/passwd | awk -F ":" '{if ($3 > 1000 && $3 < 10000) print $1}' > remove_users.txt

dir="/vagrant/scripts"
file="${dir}/remove_users.txt"

# Check if user if root
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root user"
  exit 1
fi

# Check if file is empty
if [[ ! -s ${file} ]]; then
  echo "File is empty, or does not exist!"
  exit 1
fi

printf "\n"

cd ${dir}

# Delete users
cat ${file} | while read user
do
  echo "Deleting user '${user}'..."
  userdel -rf "${user}"
  echo "User '${user}' has been successfully delete!"
  printf "\n"
done

exit 0