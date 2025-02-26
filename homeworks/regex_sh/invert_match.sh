#!/bin/bash
# Inverted Match using grep to exclude lines containing "success"

echo 

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Use grep with -v to invert the match and display lines that do not contain "success"
result=$(grep -vn "success" "$1")

if [ -z "$result" ]; then
    echo "No lines were found."
else
    echo "Displaying lines without 'success': "
    echo "$1"
    echo "$result"
    echo
    echo "Search completed."
fi
