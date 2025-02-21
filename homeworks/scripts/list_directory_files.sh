#!/bin/bash
# list_directory_files.sh
# Purpose: Ask the user for a directory path and list all files in that directory.
# Author: MariferVL
# Date: 20-02-2025

# Option 1: Using an argument
# Check if a directory path is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 directory_path"
    exit 1
fi

# Store the directory path argument in a variable
dir_path=$1

# Check if the provided argument is a directory
if [ -d "$dir_path" ]; then
    echo "Listing files in the directory: $dir_path"
    # List all files in the directory
    ls -l "$dir_path"
else
    echo "Error: $dir_path is not a directory or does not exist."
    exit 1
fi

# Option 2: Using a prompt 

# # Prompt to ask the user for a directory path
# echo "Please enter the directory path:"
# read dir_path

# # Check if the provided path is a directory
# if [ -d "$dir_path" ]; then
#     echo "Listing files in the directory: $dir_path"
#     # List all files in the directory
#     ls -l "$dir_path"
# else
#     echo "Error: $dir_path is not a directory or does not exist."
#     exit 1
# fi
