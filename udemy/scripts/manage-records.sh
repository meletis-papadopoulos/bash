#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Add or delete records from file

dir="/vagrant/scripts"

# Clear screen
clear

echo "Select one of the following actions:"
echo "1). Add record to file"
echo "2). Delete redord from file"
read action

case ${action} in 
  1) ${dir}/add-record.sh;;
  2) ${dir}/delete-record.sh;;
  *) echo "Invalid choice, exiting script..."
esac

exit 0