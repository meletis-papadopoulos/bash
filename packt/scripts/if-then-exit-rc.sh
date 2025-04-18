#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Use return codes to stop script flow
# Usage: ./if-then-exit-rc.sh
#####################################

# Create a new top-level directory
mkdir /temporary_dir
mkdir_rc=${?}

# Test if directory was created successfully
if [[ ${mkdir_rc} -ne 0 ]]; then
  echo "mkdir did not successfully complete, stop script execution!"
  exit 1
fi

# Create a new file in our temporary directory
touch /temporary_dir/tempfile.txt

exit 0