#!/bin/bash

#####################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: 2018-10-28
# Description: For syntax with a continue.
# Usage: ./for-continue.sh
#####################################

# Look at numbers 1-20, in steps of 2.
for number in {1..20..2}; do
  if [[ $((${number}%5)) -eq 0 ]]; then
    continue # Unlucky number, skip this!
  fi

  # Show the user which number we've processed.
  echo "Looking at number: ${number}."

done

