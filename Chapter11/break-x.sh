#!/bin/bash

#####################################
# Author: Sebastiaan Tammer
# Version: v1.2.0
# Date: 2018-10-28
# Description: Breaking out of nested loops.
# Usage: ./break-x.sh
#####################################

while true; do
  echo "This is the outer loop."
  sleep 1

  for iteration in {1..3}; do
    echo "This is inner loop ${iteration}."
    if [[ ${iteration} -eq 2 ]]; then
      break 2 # Break out of the outer while-true loop.
    fi
    sleep 1
  done

done
echo "This is the end of the script, thanks for playing!"

