#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Delete files older than 90 days

path="/vagrant/scripts/old_files"

# Find old files
#sudo find ${path} -mtime +90 -exec ls -ltr {} \;

# Find and delete old files
sudo find ${path} -mtime +90 -exec rm {} \;

exit 0