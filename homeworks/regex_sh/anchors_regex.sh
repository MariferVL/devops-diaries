#!/bin/bash
# Find lines starting with "ERROR"

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Search for lines starting with "ERROR" and store the result with line numbers
result=$(grep -n "^ERROR" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No lines starting with 'ERROR' were found."
else
    echo "Lines starting with 'ERROR':"
    echo "$1"
    echo "$result"
fi

echo
echo "Search completed."
