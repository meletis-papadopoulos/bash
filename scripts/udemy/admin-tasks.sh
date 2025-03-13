#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Run basic administrative commands

printf "\n"

echo "This script will run basic administrative commands"
printf "\n"

top | head -10
printf "\n"

df -h
printf "\n"

free -m
printf "\n"

uptime
printf "\n"

iostat
printf "\n"

exit 0