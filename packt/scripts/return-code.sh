#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Check return code
# Usage: return-code./.sh
#####################################

# Run a command that should always work
mktemp
mktemp_rc=${?}

# Run a command that should always fail
mkdir /home/
mkdir_rc=${?}

echo "mktemp returned ${mktemp_rc}, while mkdir return ${mkdir_rc}!"

exit 0