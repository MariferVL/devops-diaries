#!/bin/bash
# Search Multiple Files using grep

# This script searches for the word "warning" in all .log files within the specified directory.
# The search is case-insensitive to ensure all instances of warnings are captured, 
# regardless of their format.

echo 

# Check if a directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Search for the word "warning" across multiple .log files in the dir and store the result
result=$(grep -in "warning" "$1"/*.log)

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No lines containing 'warning' were found in the .log files."
else
    echo "Lines with 'warning' in .log files:"
    echo "$result"
    echo
    echo "Search completed."
fi
