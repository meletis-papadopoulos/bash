#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Verify total number of files

file_pattern=$(ls *test_file*.txt 2>/dev/null | wc -l)

if [[ ${file_pattern} -eq 20 ]]; then
  echo "There are ${file_pattern} files"
else
  echo "File are less than 20"
fi

exit 0