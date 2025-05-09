#!/usr/bin/env bash

# Usage: 
# Run script with root privileges to modify iptables
# sudo ./drop_ip.sh <IP_ADDRESS>

# Check if you are root
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root!"
  exit 1
fi

# Provide IP or host to block
echo "Blocking connections from: ${1}"
sleep 1

# Insert rule at the top of INPUT chain to drop all packets from given IP
iptables -I INPUT -s ${1} -j DROP
echo "Done..."

exit 0