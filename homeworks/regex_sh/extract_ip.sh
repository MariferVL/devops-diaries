#!/bin/bash
# Extract all valid IPv4 addresses from a log file

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Extract IPv4 addresses and store the result with line numbers
result=$(grep -nEo "([0-9]{1,3}\.){3}[0-9]{1,3}" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No valid IPv4 addresses were found."
else
    echo "Valid IPv4 addresses:"
    echo "$1"
    echo "$result"
fi

echo
echo "Search completed."
