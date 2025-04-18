#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Case statement

printf "\n"

echo "Choose one of options below: "
printf "\n"

echo "1). Display current date and time"
echo "2). List files and directories"
echo "3). List currently logged in users"
echo "4). Check system uptime"
echo "5). Clear terminal screen"
printf "\n"

read -p "What is your option? " choice

case ${choice} in
  1) date;;
  2) ls -ltr;;
  3) who;;
  4) uptime;;
  5) clear;;
  *) echo "Invalid option!"
esac

exit 0