#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Redirect user input to file
# Usage: ./redirect-to-file.sh
#####################################

# Since we're dealing with paths, set current working directory
cd $(dirname ${0})

# Capture the users' input
read -p "Type anything you like: " user_input

# Save the users' input to a file
# Use ">" to overwrite, and ">>" to append
echo ${user_input} >> redirect-to-file.txt

exit 0