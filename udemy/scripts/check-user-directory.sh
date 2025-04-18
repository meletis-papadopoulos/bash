#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Find if a directory is associated with a user account

DIR="/home/*"

for dir in ${DIR}
do
  check=$(grep -c ${dir} /etc/passwd)
  if [[ ${check} -ge 1 ]]; then
    echo "Directory '${dir}' is assigned to a user"
  else
    echo "Directory '${dir}', is not associated with a user"
  fi
done

exit 0