#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Ping multiple remote hosts from file

hosts="/vagrant/scripts/hosts"

# Check file existence
if [[ -f ${hosts} ]]; then
  echo "File '${hosts}', exists" &> /dev/null
else
  echo "File does not exist" &> /dev/null
  exit 1
fi

# Read through the contents of the file
for host in $(cat ${hosts})
do
  ping -c3 ${host} &> /dev/null
  if [[ ${?} -eq 0 ]]; then
    echo "Pinging host '${host}'... Ok"
  else
    echo "Host '${host}', is unreachable"
  fi
done

exit 0