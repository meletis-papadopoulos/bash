#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Check if a file exists

# List of files
FILES="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/sshd_ssh_config
/etc/fake"

printf "\n"

for file in ${FILES}
do
  if [[ ! -e ${file} ]]; then
    echo "File ${file} does not exist!"
    sleep 1
    printf "\n"
  fi
done

exit 0