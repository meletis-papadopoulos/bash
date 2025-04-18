#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Kill dead or zombie process by its ID (PID)

# Get PID
process_to_kill=$(ps aux | grep -i sleep | grep -v grep | awk '{print $2}')

# Kill a process by using its PID
for proc in ${process_to_kill}; do
  kill "${proc}"
  echo "Process '${proc}' has been terminated!"
done

exit 0