#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Capabilities of an interactive script with 'if-then' logic
# Usage: ./interactive-ultimate.sh [character name] [location] [food]
#####################################

# Grab arguments
character_name=${1}
location=${2}
food=${3}

# Prompt user for information
if [[ -z ${character_name} ]]; then
  read -p "Name a fictional character: " character_name
fi

if [[ -z ${location} ]]; then
  read -p "Name an actual location: " location
fi

if [[ -z ${food} ]]; then
  read -p "What's your favorite food? " food
fi

# Compose story
echo "Recently, ${character_name} was seen in ${location} eating ${food}!"

exit 0