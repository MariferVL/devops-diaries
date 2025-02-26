#!/bin/bash
# Simple Pattern Search using grep.

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Search for the word "Linux" and store the result
result=$(grep -n "Linux" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No lines containing 'Linux' were found."
else
    echo "Lines that contain 'Linux':"
    echo "$result"
    echo
    echo "Search completed."
fi
