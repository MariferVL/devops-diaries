#!/bin/bash
# Case-Insensitive Search using grep

echo 

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Search for "bash" ignoring case and store the result
result=$(grep -in "bash" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No lines containing 'bash' were found (case-insensitive)."
else
    echo "Lines that contain 'bash' (case-insensitive):"
    echo "$result"
    echo
    echo "Search completed."
fi
