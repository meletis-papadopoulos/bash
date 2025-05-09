#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: List users logged in by user input

read -p "Enter day: (i.e. Mon) " day
read -p "Enter month: (i.e. Aug) " month
read -p "Enter date: (i.e. 15) " date

printf "\n"
last | grep --color "${day} ${month} ${date}"

printf "\n"
last | grep --color "${day} ${month} ${date}" | awk '{print $1}'

exit 0