#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: List logged in users by date

today="$(date | awk '{print $1,$2,$3}')" # First 3 fields
last | grep --color "${today}"

printf "\n"

last | grep --color "${today}" | awk '{print $1}' # Only get username

exit 0