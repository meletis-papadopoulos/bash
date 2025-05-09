#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Pull failure messages from /var/log/messages directory

dir="/vagrant/scripts/messages/"
file="/vagrant/scripts/messages/messages"
output="fail.log"

cat ${file} | grep -i fail > ${dir}/${output}

exit 0