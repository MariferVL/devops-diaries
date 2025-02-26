#!/bin/bash
# Extract dates in the format YYYY-MM-DD from a file

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Extract dates and store the result with line numbers
result=$(grep -n -E -o "\b[0-9]{4}-[0-9]{2}-[0-9]{2}\b" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No dates in the format YYYY-MM-DD were found."
else
    echo "Dates(YYYY-MM-DD) in $1:"
    echo "$result"
fi

echo
echo "Search completed."
