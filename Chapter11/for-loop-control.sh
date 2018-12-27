#!/bin/bash

#####################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: 2018-10-28
# Description: Loop control in a for loop.
# Usage: ./for-loop-control.sh
#####################################

# Generate a random number from 1-10.
random_number=$(( ( RANDOM % 10 )  + 1 ))

# Iterate over all possible random numbers.
for number in {1..10}; do
  
  if [[ ${number} -eq ${random_number} ]]; then
    echo "Random number found: ${number}."
    break # As soon as we have found the number, stop.
  fi

  # If we get here the number did not match.
  echo "Number does not match: ${number}."
done
echo "Number has been found, all done."

