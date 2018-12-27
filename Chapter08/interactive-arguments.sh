#!/bin/bash

#####################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: 2018-09-09
# Description: Show of the capabilities of an interactive script, using positional arguments.
# Usage: ./interactive-arguments.sh <fictional character name> <actual location name> <your favorite food>
#####################################

# Initialize the variables from passed arguments.
character_name=${1}
location=${2}
food=${3}

# Compose the story.
echo "Recently, ${character_name} was seen in ${location} eating ${food}!"
