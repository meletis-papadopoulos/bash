#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Check file existence

file="/vagrant/scripts/error.txt"

ls -l ${file}

if [[ ${?} -eq 0 ]]; then
  echo "File exists!"
else
  echo "File does not exist."
fi

#if [ ! -e ${file} ]; then
#  echo "File does not exist!"
#else
#  echo "File exists!"
#fi

exit 0
