#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Write faster test with shorthand!
# Usage: test-shorthand./.sh
#####################################

DIRECTORY="/tmp/"

# Test if '/tmp/' directory exist using the full command
test -d ${DIRECTORY}
test_rc=${?}

# Test if '/tmp/' directory exists using the simple shorthand
[ -d ${DIRECTORY} ]
simple_rc=${?}

# Test if '/tmp/' directory exists using the extended shorthand
[[ -d ${DIRECTORY} ]]
extended_rc=${?}

# Print results
echo "The return codes are ${test_rc}, ${simple_rc}, ${extended_rc}"

exit 0