#!/bin/bash
# List the 5 most recent logins and filter entries by user or IP address

echo

# Check if a username or IP address is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <username_or_ip>"
    exit 1
fi

# Get the 5 most recent logins and filter by the provided username or IP address
result=$(last -n 5 | grep -n "$1")

# Check if there are any matches
if [ -z "$result" ]; then
    echo "No logins for '$1' were found."
else
    echo "Logins found in the 5 most recent entries:"
    echo "$1"
    echo "$result"
fi

echo
echo "Search completed."
