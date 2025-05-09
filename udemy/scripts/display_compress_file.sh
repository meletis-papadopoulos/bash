#!/usr/bin/env bash

# Display file contents and compress

# Check if file exists
if [[ ! -e ${1} ]]; then
  echo "File does not exist!"
  exit 1
fi

# Display file contents and compress
echo "Displaying content of file '${1}'..."
sleep 2

printf "\n"

# Output file content
cat ${1}

printf "\n"

echo "Compressing file '${1}'..."
sleep 2

printf "\n"

# Create tar archive
tar cavf "${1}.tgz" "${1}"

# Check command output
if [[ ${?} -eq 0 ]]; then
  echo "File was successfully compressed!"
else
  echo "An error occurred!"
  exit 1
fi

exit 0