#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Use 'grep' exit status to make decisions about file manipulation
# Usage: ./grep-then-else.sh
#####################################

FILE_NAME="/tmp/grep-then-else.txt"

# Touch the file; create if it does not exist
touch ${FILE_NAME}

# Check the file for the keyword
grep -q 'keyword' ${FILE_NAME}
grep_rc=${?}

# If the file contains the keyword, remove the file, otherwise write the keyword to the file
if [[ ${grep_rc} -eq 0 ]]; then
  rm ${FILE_NAME}
else
  echo 'keyword' >> ${FILE_NAME}
fi

exit 0