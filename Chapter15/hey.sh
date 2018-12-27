#!/bin/bash

#####################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: 2018-12-14
# Description: Getopts with multiple flags.
# Usage: ./hey.sh [flags]
#####################################

# Abstract the help as a function, so it does not clutter our script.
print_help() {
  echo "Usage: $0 [flags]"
  echo "Flags:"
  echo "-h for help."
  echo "-b for male greeting."
  echo "-g for female greeting."
}

# Parse the flags.
optstring=":bgh"
while getopts ${optstring} options; do
  case ${options} in
    b)
      gender="boy"
      ;;
    g)
      gender="girl"
      ;;
    h)
      print_help
      exit 0 # Stop script, but consider it a success.
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;; 
  esac
done

# If $gender is n (nonzero), print specific greeting.
# Otherwise, print a neutral greeting.
if [[ -n ${gender} ]]; then
  echo "Hey ${gender}!"
else
  echo "Hey there!"
fi

