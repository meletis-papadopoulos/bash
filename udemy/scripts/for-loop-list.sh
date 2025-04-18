#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Use for loop for a list of actions

read -p "What's your name? " name

for i in eat run work "sleep"
do
  echo "Hello ${name}, it is time to ${i}"
done

exit 0