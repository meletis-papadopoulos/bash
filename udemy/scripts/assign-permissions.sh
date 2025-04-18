#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Assign execute permissions to test files

total="$(ls -l test_file* | wc -l)"
echo "It will take ${total} seconds to assign permissions..."
printf "\n"

for i in test_file*
do
  echo "Assigning execute permissions to ${i}"
  chmod a+x ${i}
  sleep 1
done

exit 0