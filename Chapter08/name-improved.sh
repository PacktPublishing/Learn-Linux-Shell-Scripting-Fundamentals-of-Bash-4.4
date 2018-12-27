#!/bin/bash

#####################################
# Author: Sebastiaan Tammer
# Version: v1.1.0
# Date: 2018-09-08
# Description: Script to show why we need variables; now with user input!
# Usage: ./name-improved.sh
#####################################

# Assign the name to a variable.
name=${1}

# Print the story.
echo "There once was a person named ${name}. ${name} enjoyed Linux and Bash so much that he/she wrote a book about it! ${name} really hopes everyone enjoys his/her book."
