#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Capabilities of an interactive script
# Usage: ./interactive.sh
#####################################

# Prompt user for information
read -p "Name a fictional character: " character_name
read -p "Name an actual location: " location
read -p "What's your favorite food? " food

# Compose story
echo "Recently, ${character_name} was seen in ${location} eating ${food}!"

exit 0