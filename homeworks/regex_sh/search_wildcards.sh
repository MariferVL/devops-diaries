#!/bin/bash
# Find words starting with "auto"

echo 

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Search for words starting with "auto"
result=$(grep -own "\bauto[a-zA-Z]*" "$1")

if [ -z "$result" ]; then
    echo "No words starting with 'auto' found."
else
    echo "Words starting with 'auto':"
    echo "$1"
    echo "$result"
    echo
    echo "Search completed."
fi
