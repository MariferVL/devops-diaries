#!/bin/bash
# Display lines containing any digit from a file

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Search for lines containing any digit and store the result with line numbers
result=$(grep -n "[0-9]" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No lines containing any digit were found."
else
    echo "Lines containing digits:"
    echo "$1"
    echo "$result"
fi

echo
echo "Search completed."
