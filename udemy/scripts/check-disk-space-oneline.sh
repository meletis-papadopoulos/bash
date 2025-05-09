#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Check disk space (in a single line)

# Check disk space
echo "Disk space status:"
df -h | awk '0+$5 >=80 {print}' | awk '{print $5,$6}'

exit 0