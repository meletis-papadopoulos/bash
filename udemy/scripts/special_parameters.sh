#!/usr/bin/env bash

# Word splitting is performed for every argument
touch ${@} # touch "${1} ${2} ${3}"

# No word splitting is performed
touch "${@}" # touch "${1}" "${2}" "${3}"

# Split arguments with ","
IFS=","

# No word splitting is performed
touch "${*}"

exit 0