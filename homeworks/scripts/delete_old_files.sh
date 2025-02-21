#!/bin/bash
# delete_old_files.sh
# Purpose: Delete all files in a specified directory that are older than 7 days.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line
echo

# Check if the user provided a directory
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    echo "Please provide the directory to clean up."
    echo
    exit 1
fi

# Assign the first argument to the variable 'directory'
directory=$1

# Inform the user about the action being performed
echo "Checking for files older than 7 days in '$directory'..."

# Find and list files older than 7 days
old_files=$(find "$directory" -type f -mtime +7)

# Check if there are any old files
if [ -z "$old_files" ]; then
    echo "No files older than 7 days found in '$directory'."
else
    echo "Deleting the following files in '$directory' that are older than 7 days:"
    echo "$old_files"
    
    # Loop through the files and delete them
    for file in $old_files; do
        rm -f "$file"
    done

    # Inform the user that the deletion is complete
    echo "Deletion complete."
    echo "All files older than 7 days in '$directory' have been deleted."
fi

echo

