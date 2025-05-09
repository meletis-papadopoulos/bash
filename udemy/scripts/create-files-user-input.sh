#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Create files with user input

read -p "How many files do you want to create? " num_files
printf "\n"

read -p "Enter the start name for the file(s): " start_name
printf "\n"

for i in $(seq 1 ${num_files})
do
  touch ${start_name}${i}
done

exit 0