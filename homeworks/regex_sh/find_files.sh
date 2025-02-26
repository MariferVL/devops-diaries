#!/bin/bash
# Find files containing the word "script"

echo 

# Check if a directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Search for files containing the word "script"
result=$(grep -rl "script" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No files with 'script' were found."
else
    echo "Files with 'script'"
    echo "$result"
fi

echo
echo "Search completed."
