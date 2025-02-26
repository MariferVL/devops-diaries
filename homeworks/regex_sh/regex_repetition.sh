#!/bin/bash
# Find lines containing at least two consecutive spaces

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Search for lines containing at least two consecutive spaces and store the result with line numbers
result=$(grep -n "  " "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No lines containing at least two consecutive spaces were found."
else
    echo "Lines with at least two consecutive spaces:"
    echo "$1"
    echo "$result"
fi

echo
echo "Search completed."
