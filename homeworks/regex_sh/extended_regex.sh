#!/bin/bash
# Find lines containing words with three or more consecutive vowels using extended regex

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Search for lines with words containing three or more consecutive vowels and store the result with line numbers
result=$(grep -nE "[aeiouAEIOU]{3,}" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No words with three or more consecutive vowels were found."
else
    echo "Lines with words containing three or more consecutive vowels:"
    echo "$1"
    echo "$result"
fi

echo
echo "Search completed."
