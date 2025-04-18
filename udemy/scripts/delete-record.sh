#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Delete records from file

file="/vagrant/scripts/database"

# Clear screen
clear

read -p "Enter the hostname or IP address: " hostip

if grep -iq "${hostip}" "${file}"; then
  sed -i '/'${hostip}'/d' ${file}
  echo "Record ${hostip} has been deleted"
else
  echo "Record ${hostip}, does not exist"
fi

exit 0