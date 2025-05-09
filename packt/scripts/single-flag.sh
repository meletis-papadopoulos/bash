#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Show the basic 'getopts' syntax
# Usage: ./single-flag.sh [flags]
#####################################

# Parse the flags in a 'while' loop
# After the last flag, 'getopts', returns 'false', which ends the loop
# Syntax: getopts optstring name [arg]
# Turn off verbose error logging -> ":v"
# An option argument is expected -> "v:"
# OPTARG -> Grab the option argument
optstring=":v:"
while getopts ${optstring} options; do
  case ${options} in
    v)
      echo "-v was found!"
      echo "-v option argument is: ${OPTARG}"
      ;;
    :)
      echo "-${OPTARG} requires an argument"
      exit 1
      ;;
    ?)
      echo "Invalid option: -${OPTARG}"
      exit 1
      ;;
  esac
done

exit 0