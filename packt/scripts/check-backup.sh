#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Check if daily backup has succeeded
# Usage: ./check-backup.sh <file>
#####################################

# Format the date: yyyymmdd
DATE_FORMAT=$(date +%Y%m%d)

# Use basename to remove directory, expansion to remove extension
# Double %% so .tar.gz works too
file=$(basename ${1%%.*})

if [[ ${file} == "backup-${DATE_FORMAT}" ]]; then
  echo "Backup with today's date found, all good!"
  # Successful
  exit 0
else
  echo "No backup with today's date found, please double check!"
  # Unsuccessful
  exit 1
fi

exit 0