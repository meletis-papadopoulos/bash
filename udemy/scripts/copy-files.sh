#!/usr/bin/env bash
# Author: Meletis Papadopoulos
# Date: 09.03.25
# Description: Copy files to remote host(s)

hostnames="redhat-1 redhat-2 redhat-3 redhat-4 redhat-5"

for host in ${hostnames}
do
  scp test_file.txt ${host}:/tmp
done

exit 0