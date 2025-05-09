#!/usr/bin/env bash

#####################################
# Author: Meletis Papadopoulos
# Version: v1.0.0
# Date: 01-04-2025
# Description: Prints "Hello World!", using a function
# Usage: ./hello-world-function.sh
#####################################

# Define the function before we call it
hello_world() {
  echo "Hello, World!"
}

# Call the function, we defined earlier
hello_world

exit 0