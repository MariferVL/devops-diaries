#!/bin/bash
# List processes owned by a specific user

echo

# Check if a username is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

# Search for processes owned by the specified user
result=$(ps aux | grep "^$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No processes owned by '$1' were found."
else
    echo "Processes owned by '$1':"
    echo "$result"
fi

echo
echo "Search completed."
