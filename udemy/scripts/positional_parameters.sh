#!/usr/bin/env bash

# Work with positional parameters
printf "\n"

# Print script name (${0} argument)
echo "Script name (\${0}) is: ${0}"

# Default value for ${1}
echo "1st script argument: (\${1}) is: ${1:-abc}"
# echo "1st script argument: (\${1}) is ${1}" # No default value provided
echo "2nd script argument: (\${2}) is: ${2}"
echo "3rd script argument: (\${3}) is: ${3}"
echo "10th script argument: (\${10}) is: ${10}"
echo "11th script argument: (\${11}) is: ${11}"

printf "\n"

echo "(\${#}) is ${#}" # Number of arguments
echo "(\${@}) is ${@}" # All positional parameters passed to the script
echo "(\${*}) is ${*}" # All positional parameters passed to the script
echo "(\${?}) is ${?}" # Exit status of the last executed command
echo "(\${$}) is ${$}" # Process ID of the shell

exit 0