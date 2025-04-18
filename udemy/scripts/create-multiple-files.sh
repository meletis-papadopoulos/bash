#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Create multiple files with the same name

for i in {1..10}
do
  touch test_file${i}.txt
done

exit 0