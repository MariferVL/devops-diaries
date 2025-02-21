#!/bin/bash
# check_file_exists.sh
# Purpose: Compare different methods for checking if a file exists and highlight their differences.
# Author: MariferVL
# Date: 20-02-2025

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 filename"
    exit 1
fi

# Store the filename argument in a variable
filename=$1

# Using -e to check if the file exists
if [ -e "$filename" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi
echo "-e: Checks for any type of file (regular file, directory, symlink, etc.)"
echo

# Using -f to check if the file exists and is a regular file
if [ -f "$filename" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi
echo "-f: Checks if the file exists and is a regular file (ignores directories, symlinks)"
echo

# Using find to check if the file exists
if find . -type f -name "$filename" | grep -q "$filename"; then
    echo "File exists."
else
    echo "File does not exist."
fi
echo "find: Searches for files in the directory and subdirectories, more flexible for complex searches"
echo

# Using test to check if the file exists
if test -e "$filename"; then
    echo "File exists."
else
    echo "File does not exist."
fi
echo "test: Similar to -e, checks for any type of file"

