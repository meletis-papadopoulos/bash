#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Rename files ending in .txt (text files)

for filename in *.txt
do
  mv ${filename} ${filename%.txt}.none # Change all files ending in ".txt" to ".none"
done

exit 0