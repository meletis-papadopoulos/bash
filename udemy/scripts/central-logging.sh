#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Log the following defined keywords under "/var/log/messages": "refused", "invalid", "error", "fail", "lost", "shut", "down", "offline"
# Note: Manually add test error under "/var/log/messages" with "logger": "logger -t error", '"logger -t error "Test entry"'

dir="/vagrant/scripts/"
file="filtered-messages.log"

# Check if user if root
if [[ ${UID} -ne 0 ]]; then
  echo "You are not root user"
  exit 1
fi

# n0: Only look for latest incoming messages
# 'line' is a variable, that gets the output of each line under 'var/log/messages'
tail -fn0 /var/log/messages | while read line

do
  echo ${line} | egrep -i "refused|invalid|error|fail|lost|shut|down|offline"
  
  if [[ ${?} -eq 0 ]]; then
    echo ${line} >> "${dir}/${file}"
fi
done

exit 0