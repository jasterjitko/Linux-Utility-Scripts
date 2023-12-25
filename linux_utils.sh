#!/bin/bash

#---------------------------------------------------------
# Linux Utility Script
# Author: jasterjitko
# Version: 1.0
# License: MIT
#---------------------------------------------------------

# Description:
# This script provides convenient utilities for working with Linux.

#---------------------------------------------------------
# Function to display processes by port
# Example usage: show_processes_by_port 8080
#---------------------------------------------------------
show_processes_by_port() {
  port=$1
  echo "Processes using port $port:"
  lsof -i :$port
}

#---------------------------------------------------------
# Function to search for a file by name in the current and subdirectories
# Example usage: find_file "example.txt"
#---------------------------------------------------------
find_file() {
  filename=$1
  echo "Searching for file: $filename"
  find . -name $filename
}

# Add your own functions and utilities here

#---------------------------------------------------------
# End of file
#---------------------------------------------------------
