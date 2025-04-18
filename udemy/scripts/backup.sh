#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Backup /etc and /var directories

dir="/vagrant/scripts/backups"
etc_dir="/etc"
var_dir="/var"
backup="backup-$(date +%F-%s)"

# Check root user
if [[ ${UID} -eq 0 ]]; then
  echo "You are root"
else
  echo "You are not root"
  exit 1
fi

printf "\n"

# Check if directories exist
if [[ ! -d ${etc_dir} ]]; then
  echo "Directory ${etc_dir}, does not exist!"
  exit 1
else
  echo "Directory ${etc_dir}, exists"
fi

printf "\n"

# Check if directories exist
if [[ ! -d ${var_dir} ]]; then
  echo "Directory ${var_dir}, does not exist!"
  exit 1
else
  echo "Directory ${var_dir}, exists"
fi

printf "\n"

# Backup directories
tar cavf ${dir}/${backup}.tgz /etc /var

# Check if the backup exists before copying it ("-1" -> created today)
find ${dir} -mtime -1 -type f -print &> /dev/null

printf "\n"

# Check status
if [[ ${?} -eq 0 ]]; then
  echo "Backup was created!"
  printf "\n"
  echo "Copying backup file..."
  mkdir -p /tmp/backups
  cp -prv ${dir}/${backup}.tgz /tmp/backups/ &> /dev/null
  echo "Done"
else
  echo "Backup failed!"
fi

exit 0