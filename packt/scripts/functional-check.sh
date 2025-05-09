#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Functional checks
# Usage: functional-check./.sh
#####################################

# Create a directory
mkdir /tmp/temp_dir
mkdir_rc=${?}

# Use 'test' command, to check if the directory was created
test -d /tmp/temp_dir
test_rc=${?}

# Check out the return code
echo "mkdir resulted in ${mkdir_rc}, test resulted in ${test_rc}"

exit 0