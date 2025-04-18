#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Format the output of administrative commands 

date | awk '{print $1}'
uptime | awk '{print $3}'
df -h | grep -i root

exit 0