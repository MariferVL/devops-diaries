#!/bin/bash
# Extract URLs (http or https) from a document

echo

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Extract URLs and store the result with line numbers
result=$(grep -nEo "http[s]?://[a-zA-Z0-9./?=_-]*" "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No URLs were found."
else
    echo "URLs found:"
    echo "$1"
    echo "$result"
fi

echo
echo "Search completed."
