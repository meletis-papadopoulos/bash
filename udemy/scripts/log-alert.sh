#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Send email to administrator

dir="/vagrant/scripts/"
file="filtered-messages.log"

# Check if user if root
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root user"
  exit 1
fi

it_group="meletis.papadopoulos@cloud.com,john.doe@cloud.com"

if [[ -e ${file} ]]; then
  cat ${file} | sort | uniq | mail -s "syslog messages..." ${it_group}
  rm ${file}
else
  echo "File ${file}, does not exist!"
fi

exit 0