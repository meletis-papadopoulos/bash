#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Capabilities of an interactive script using positional arguments
# Usage: ./interactive-arguments.sh <character name> <location> <food>
#####################################

# Initialize variables from passed arguments
character_name=${1}
location=${2}
food=${3}

# Compose story
echo "Recently, ${character_name} was seen in ${location} eating ${food}!"

exit 0