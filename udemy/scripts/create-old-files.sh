#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Create files with old timestamp

path="/vagrant/scripts/old_files"
cd ${path}

for i in {1..5}
do
  touch -d "Thu, 1 March 2018 12:30:00" file${i}.txt
done

exit 0