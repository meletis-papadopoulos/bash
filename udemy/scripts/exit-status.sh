#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Check output of a command

dir="/vagrant/scripts"

if [[ ! -d ${dir} ]]; then
  echo "Directory does not exist!"
else
  echo ""
  ls -ltr ${dir}
  touch file{1..5}.txt
fi

printf "\n"

# Remove test files
rm file{1..5}.txt

if [[ ${?} -eq 0 ]]; then
  echo "Operation was successful!"
else
  echo "Operation failed!"
fi

exit 0