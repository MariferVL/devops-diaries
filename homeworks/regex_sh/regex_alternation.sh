#!/bin/bash
# Find lines containing either "failed" or "denied" using regex alternation

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Search for lines containing "failed" or "denied" and store the result with line numbers
result=$(grep -nE "failed|denied" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No lines containing 'failed' or 'denied' were found."
else
    echo "Lines containing 'failed' or 'denied':"
    echo "$1"
    echo "$result"
fi

echo
echo "Search completed."
