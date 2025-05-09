#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Work with for loop

for i in 1 2 3 4 5
do
  echo "Welcome ${i} time(s)!"
done

printf "\n"

for i in $(seq 1 7)
do
  echo "Welcome ${i} time(s}!"
done

printf "\n"

for i in {1..10}
do
  echo "Hello, number ${i}"
done

exit 0