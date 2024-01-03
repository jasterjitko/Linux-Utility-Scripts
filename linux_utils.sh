#!/bin/bash

#---------------------------------------------------------
# Linux Utility Script
# Author: jasterjitko
# Version: 1.1
# License: MIT
#---------------------------------------------------------

# Description:
# This script provides a set of convenient utilities for working with Linux.

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

#---------------------------------------------------------
# Function to archive the current directory
# Example usage: archive_current_directory
#---------------------------------------------------------
archive_current_directory() {
  timestamp=$(date +"%Y%m%d_%H%M%S")
  archive_name="archive_$timestamp.tar.gz"
  echo "Archiving current directory to $archive_name"
  tar -czvf $archive_name .
}

#---------------------------------------------------------
# End of file
#---------------------------------------------------------
