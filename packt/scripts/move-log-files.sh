#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Move log files based on their last modified date
# Usage: ./move-log-files.sh
#####################################

# Exit the script immediately if any command fails, and exit on pipeline failures too
set -e
set -o pipefail

# Path to the folder containing the log files
log_folder="/vagrant/scripts/packt/"

# Change to the log folder
cd "${log_folder}" || exit 1

# Loop over each .log file in the folder
for log_file in *.log; do
    # Get the last modified date of the file (format: YYYYMMDD)
    mod_date=$(date -r "${log_file}" +%Y%m%d)
    
    # Create a folder with the name of the modification date if it doesn't exist
    mkdir -p "${mod_date}"
    
    # Move the log file into the folder
    mv "${log_file}" "${mod_date}/"
    
    echo "Moved ${log_file} to ${mod_date}/"
done

echo "Done moving files."

exit 0