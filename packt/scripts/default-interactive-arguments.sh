#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Interactive script with default variables
# Usage: ./interactive-arguments.sh <name> <location> <food>
#####################################

# Initialize the variables from passed arguments
# ${parameter:-word}
# Use Default Values. If parameter is unset or null, the expansion of word is substituted
# Otherwise, the value of parameter is substituted
character_name=${1:-Meletis}
location=${2:-Utrecht}
food=${3:-frikandellen}

# Compose the story
echo "Recently, ${character_name} was seen in ${location}, eating ${food}!"

exit 0