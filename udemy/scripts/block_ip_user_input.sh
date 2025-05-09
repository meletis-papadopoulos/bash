#!/usr/bin/env bash

# Check if you're root user
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root user!"
  exit 1
fi

read -p "Enter IP address or domain to block: " ip
echo "Blocking connections from ${ip}"
sleep 1

# Block IP or host
iptables -I INPUT -s ${ip} -j DROP
echo "Done..."

exit 0