#!/bin/bash
# find_large_files.sh
# Purpose: Find and list all files larger than 100MB in the current directory.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line 
echo

# Inform the user about the action being performed
echo "🔍 Searching for files larger than 100MB in the current directory..."

# Find and list all files larger than 100MB
large_files=$(find . -type f -size +100M)

# Check if any large files were found
if [ -z "$large_files" ]
then
    echo "📂 No files larger than 100MB found in the current directory."
else
    echo "📁 Files larger than 100MB found:"
    echo "$large_files"
fi


echo

