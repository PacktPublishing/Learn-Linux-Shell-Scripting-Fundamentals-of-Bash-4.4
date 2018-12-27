#!/bin/bash

#####################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: 2018-11-17
# Description: Reverse the input for the user.
# Usage: ./reverser.sh <input-to-be-reversed>
#####################################

# Check if the user supplied one argument.
if [[ $# -ne 1 ]]; then
  echo "Incorrect number of arguments!"
  echo "Usage: $0 <input-to-be-reversed>"
  exit 1
fi

# Capture the user input in a variable.
user_input="_${1}_" # Add _ for readability.

# Define the reverser function.
reverser() {
  # Check if input is correctly passed.
  if [[ $# -ne 1 ]]; then
    echo "Supply one argument to reverser()!" && exit 1
  fi

  # Return the reversed input to stdout (default for rev).
  rev <<< ${1}
}

# Capture the function output via command substitution.
reversed_input=$(reverser ${user_input})

# Show the reversed input to the user.
echo "Your reversed input is: ${reversed_input}"

