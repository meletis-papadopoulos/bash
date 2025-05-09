#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: A more complex function that shows why functions exist
# Usage: ./complex-function.sh
#####################################

# Used to print some current data on the system
print_system_status() {
  # Print the current date and time
  date
  echo "CPU in use: $(top -bn1 | grep -i cpu | awk '{print $2}')"
  echo "Memory in use: $(free -h | grep -i mem | awk '{print $3}')"
  echo "Disk space available on '/': $(df -h / | grep "/" | awk '{print $4}')"
  # Extra newline for readability
  echo # echo ""
}

# Print the system status a few time
for ((i=0; i<5; i++)); do
  print_system_status
  sleep 5
done

exit 0