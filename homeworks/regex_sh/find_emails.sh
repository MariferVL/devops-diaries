#!/bin/bash
# Extract all email addresses from a given file

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Extract email addresses and store the result with line numbers
result=$(grep -nEo "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No email addresses were found."
else
    echo "Email addresses found:"
    echo "$1"
    echo "$result"
fi

echo
echo "Search completed."
