#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Accept user input

name="Meletis"
host=$(hostname)

echo "Hello, my name is: ${name}"
echo "Server hostname is: ${host}"
printf "\n"

read -p "What is your name? " your_name
printf "\n"

echo "Hello, ${your_name}"

exit 0
