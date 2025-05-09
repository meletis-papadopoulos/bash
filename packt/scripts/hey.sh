#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: 'getopts' with multiple flags
# Usage: ./hey.sh [flags]
#####################################

# Abstract the help as a function, so it does not clutter the script
print_help() {
  echo "Usage: ${0} [flags]"
  echo "Flags:"
  echo "-h for help"
  echo "-b for male greeting"
  echo "-g for female greeting"
}

# Parse the flags
optstring=":bgh"
while getopts ${optstring} options; do
  case ${options} in
    b)
      gender="boy"
      ;;
    g)
      gender="girl"
      ;;
    h)
      print_help
      # Stop the script, but consider it successful
      exit 0
      ;;
    ?)
      echo "Invalid option: -${OPTARG}"
      exit 1
      ;;
  esac
done

# If ${gender} is 'n' (non-zero), print specific greeting
# Otherwise, print a neutral greeting
if [[ -n ${gender} ]]; then
  echo "Hey, ${gender}!"
else
  echo "Hey,there!"
fi

exit 0