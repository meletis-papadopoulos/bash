#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Redirect user input to file
# Usage: ./library-redirect-to-file.sh
#####################################

# Load our Bash function library
source ./bash-function-library.sh

# Since we're dealing with paths, set current working directory
set_cwd

# Capture the users' input
read -p "Type anything you like: " user_input

# Save the users' input to a file
# Use ">" to overwrite, and ">>" to append
echo ${user_input} >> redirect-to-file.txt

exit 0