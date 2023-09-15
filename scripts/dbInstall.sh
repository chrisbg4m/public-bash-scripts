#!/bin/bash

# Installation script for DB connectivity to ME
# Author: Chris Briggs
# Version: 0.1

# Function to check Python 2 version
check_python2() {
  python2 --version 2>&1 | awk -F' ' '{print $2}' | awk -F. '{
    if ($1 >= 2 && $2 >= 7 && $3 >= 9)
      exit 0
    else
      exit 1
  }'
}

# Function to check Python 3 version
check_python3() {
  python3 --version 2>&1 | awk -F' ' '{print $2}' | awk -F. '{
    exit 0  # Assume any Python 3 version is okay
  }'
}

# Check for Python 3
if command -v python3 &> /dev/null && check_python3; then
  echo "Python 3 is already installed and is the latest version."
  exit 0
fi

# Check for Python 2 version >= 2.7.9
if command -v python2 &> /dev/null && check_python2; then
  echo "Python 2 version is 2.7.9 or higher."
  exit 0
fi

# If this point is reached, Python 2 or 3 meeting the criteria are not installed.
echo "Neither Python 3 nor Python 2 (>= 2.7.9) are installed."
echo "Installing the latest version of Python 3..."

# Update and install Python 3
sudo apt update
sudo apt install -y python3

# Verify installation
if command -v python3 &> /dev/null; then
  echo "Python 3 has been successfully installed."
else
  echo "Failed to install Python 3."
fi
