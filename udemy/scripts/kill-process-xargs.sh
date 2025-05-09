#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Kill dead or zombie process by its ID (PID)

# Get PID
ps aux | grep -i sleep | grep -v grep | awk '{print $2}' | xargs -I {} echo {}

# Kill process using PID
ps aux | grep -i sleep | grep -v grep | awk '{print $2}' | xargs -I {} kill {}

echo "All sleeping processes are killed!"

exit 0