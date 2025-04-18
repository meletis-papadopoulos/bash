#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Check partition disk usage percentage

# Get disk usage percentage for all partitions
df_output=$(df -h | grep -Ev "^Filesystem|cdrom|devtmpfs|tmpfs")

# Loop through each partition's disk usage percentage and name
while read -r line; do
  # Get partition name
  partition=$(echo ${line} | awk '{print $1}')
  
  # Get disk percentage (integer)
  percentage=$(echo ${line} | awk '{print $5}' | cut -d '%' -f1)
  
  # Check percentage threshold
  if [[ ${percentage} -gt 80 ]]; then
    echo "Check the disk space in the following partition: ${partition} - ${percentage}% used"
  fi
done <<< "${df_output}"

exit 0