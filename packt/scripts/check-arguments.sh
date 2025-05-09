#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Script with parameter expansion input checking
# Usage: ./check-arguments.sh <name> <location> <food>
#####################################

# Syntax ${parameter:?word}
# Display Error if Null or Unset. If parameter is null or unset, the expansion of word (or
# a message to that effect if word is not present) is written to the standard error and the
# shell, if it is not interactive, exits. Otherwise, the value of parameter is substituted

# Initialize the variables from passed arguments
character_name=${1:?Name not supplied!}
location=${2?Location not supplied!}
food=${3:?Food not supplied!}

# Compose the story
echo "Recently, ${character_name} was seen in ${location}, eating ${food}"

exit 0