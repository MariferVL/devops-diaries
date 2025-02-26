#!/bin/bash
# Find lines containing exactly the word "root"

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Use grep with -w to match whole words only and store the result
result=$(grep -wn "root" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No lines containing the exact word 'root' were found."
else
    echo "Lines with 'root':"
    echo "$1"
    echo "$result"
fi
