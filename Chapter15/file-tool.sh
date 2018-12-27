#!/bin/bash

#####################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: 2018-12-14
# Description: A tool which allows us to manipulate files.
# Usage: ./file-tool.sh [flags] <file-name>
#####################################

print_help() {
  echo "Usage: $0 [flags] <file-name>"
  echo "Flags:"
  echo "No flags for file listing."
  echo "-d to delete the file."
  echo "-e to empty the file."
  echo "-m <new-file-name> to rename the file."
  echo "-h for help."
}

command="ls -l" # Default command, can be overridden.

optstring=":dem:h" # The m option contains an option argument.
while getopts ${optstring} options; do
  case ${options} in
    d)
      command="rm -f";;
    e)
      command="cp /dev/null";;
    m)
      new_filename=${OPTARG}; command="mv";;
    h)
      print_help; exit 0;;
    :)
      echo "-${OPTARG} requires an argument."; exit 1;;
    ?)
      echo "Invalid option: -${OPTARG}."; exit 1;; 
  esac
done

# Remove the parsed flags from the arguments array with shift.
shift $(( ${OPTIND} - 1 )) # -1 so the file-name is not shifted away.

filename=$1

# Make sure the user supplied a writable file to manipulate.
if [[ $# -ne 1 || ! -w ${filename} ]]; then
  echo "Supply a writable file to manipulate! Exiting script."
  exit 1 
fi

# Everything should be fine, execute the operation.
if [[ -n ${new_filename} ]]; then # Only set for -m.
  ${command} ${filename} $(dirname ${filename})/${new_filename}
else # Everything besides -m.
  ${command} ${filename}
fi

