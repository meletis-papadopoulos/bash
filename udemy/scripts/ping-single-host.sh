#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Ping a remote host (i.e. www.google.com)

host="www.googles.com"

#ping -c3 www.google.com > output.txt
#ping -c3 www.googles.com &> output.txt
ping -c3 ${host} &> /dev/null

if [[ ${?} -eq 0 ]]; then
  echo "Pinging host '${host}'..."
else
  echo "Host '${host}', is unreachable"
fi

exit 0