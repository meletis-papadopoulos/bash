#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Add records to a file

# Clear screen
clear

file="/vagrant/scripts/database"

# Check if file is empty and add headers
if [[ ! -s "${file}" ]]; then
  echo "Hostname,IP,Description" > "${file}"
fi

read -p "Enter the hostname: " host

# Check if hostname already exists in the file
if grep -iq "${host}" "${file}"; then
  echo "Error: Hostname ${host} already exists in the file"
  exit 1
fi

read -p "Enter the IP address: " ip

# Check if IP already exists in the file
if grep -iq "${ip}" "${file}"; then
  echo "Error: IP ${ip} already exists in the file"
  exit 2
fi

read -p "Enter description: " desc

# Create a record
echo "${host},${ip},${desc}" >> "${file}"
echo "The provided record has been added"

exit 0