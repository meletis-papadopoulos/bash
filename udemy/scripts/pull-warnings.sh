#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Pull warning messages from /var/log/messages directory

dir="/vagrant/scripts/messages"
file="/vagrant/scripts/messages/messages"
output="warn.log"

cat ${file} | grep -i warn > ${dir}/${output}

exit 0