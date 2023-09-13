#!/bin/bash

# Script to install everything you need to run the test automation when setting up a new machine. 

# Author: Chris Briggs
# Version: 0.1

echo 'Folder creation'

# Sets a folder name as a variable 

folder=Love

# Creates and navigates into folder called 'Development'
# This is where all git repos are saved

if [ -d "$HOME/$folder" ]; then
  echo "The $folder folder already exists" && cd ~/$folder
else
  mkdir -p ~/$folder
fi

echo 'Confirm folder creation'

if [ -d "$HOME/$folder" ]; then
  echo "The $folder folder has been created successfully"
else
  echo "The $folder folder has not been created successfully"
fi

cd ~/$folder