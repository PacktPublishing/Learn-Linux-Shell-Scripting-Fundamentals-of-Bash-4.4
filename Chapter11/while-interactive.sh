#!/bin/bash

#####################################
# Author: Sebastiaan Tammer
# Version: v1.1.0
# Date: 2018-10-28
# Description: A simple riddle in a while loop.
# Usage: ./while-interative.sh
#####################################

# Infinite loop, only exits on correct answer.
while true; do
  read -p "I have keys but no locks. I have a space but no room. You can enter, but can’t go outside. What am I? " answer
  if [[ ${answer} =~ [Kk]eyboard ]]; then # Use regular expression so 'a keyboard' or 'Keyboard' is also a valid answer.
    echo "Correct, congratulations!"
    break # Exit the while loop.
  else
    # Print an error message and go back into the loop.
    echo "Incorrect, please try again."
  fi
done

# This will run after the break in the while loop.
echo "Now we can continue after the while loop is done, awesome!"

