#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Use the logical OR for error handling
# Usage: ./logical-or.sh
#####################################

# This command will surely fail because we don't have required permissions
cat /etc/shadow || exit 123

exit 0