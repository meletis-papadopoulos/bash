#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Pull error messages from /var/log/messages directory

dir="/vagrant/scripts/messages/"
file="/vagrant/scripts/messages/messages"
output="error.log"

cat ${file} | grep -i error > ${dir}/${output}

exit 0