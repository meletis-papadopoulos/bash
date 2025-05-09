#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Combining globbing patterns in a 'for' loop
# Usage: ./for-globbing.sh
#####################################

# Create a directory to store log files with errors
ERROR_DIRECTORY="/tmp/error_logfiles/"
mkdir -p ${ERROR_DIRECTORY}

# Create a list of log files
for file in $(ls /var/log/*.log); do
  grep -iq "error" ${file}

  # Check the return code for grep; if it is '0', the file contains errors
  if [[ ${?} -eq 0 ]]; then
    echo "${file} contains error(s), copying it to archive"
    # Archive the file to another directory
    cp -prv ${file} ${ERROR_DIRECTORY}
    
    # Create the file location variable with the directory and basename of the file
    file_new_location="${ERROR_DIRECTORY}$(basename ${file})"
    # In-place edit, only print lines matching 'error', or 'Error"
    # ("-n" -> "--quiet", "-i" -> "--in-place")
    sed -ni '/[Ee]rror/p' ${file_new_location}
  fi
done

exit 0