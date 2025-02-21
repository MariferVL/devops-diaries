#!/bin/bash
# list_txt_files.sh
# Purpose: Print the names of all .txt files in the current directory.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line
echo

# Create a var to store the list of .txt files in the current dir
txt_files=$(ls *.txt 2> /dev/null)

# Check if there are any .txt files in the current dir
if [ -z "$txt_files" ]; then
    echo "No .txt files found in the current directory."
else
    echo "List of .txt files in the current directory:"
    echo "$txt_files"
fi


echo
