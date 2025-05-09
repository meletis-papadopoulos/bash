#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Copy "dpkg.log" to a local directory
# Usage: ./log-copy-improved.sh
#####################################

# Change directory to the script location
cd $(dirname ${0})

# Create the directory in which we'll store the file
if [[ ! -d dpkg ]]; then
  mkdir dpkg || { echo "Cannot create the directory, stopping script"; exit 1; }
fi

# Copy the log file to our new directory
cp -prv /var/log/dpkg.log dpkg || { echo "Cannot copy dpkg.log to the new directory"; exit 1; }

exit 0