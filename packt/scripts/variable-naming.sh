#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Different styles of variable naming
# Usage: ./variable-naming.sh
#####################################

# Assign variables
name="Mike"
home_type="house"
LOCATION="Utrecht"
_partner_name="Sanne"
animalTypes="gecko and hamster"

# Print story
echo "${name} lives in a ${home_type} in ${LOCATION}, together with ${_partner_name} and their two pets: a ${animalTypes}."

exit 0