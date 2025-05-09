#!/usr/bin/env bash

# Create directory and list its content
dir="/vagrant/scripts/udemy/dir1/"

# Add multi-line comment
: '
This
is
sample
text
'

mkdir -p ${dir}
echo "Hello, World!" > "${dir}"/file.txt
tree .
cat "${dir}"/file.txt

exit 0