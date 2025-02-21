#!/bin/bash
# move_log_files.sh
# Purpose: Move all .log files from one directory to another.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line 
echo

# Prompt to ask the user for the source directory
echo "Please enter the source directory:"
read src_dir

# Evaluate the source directory to handle expressions
src_dir=$(eval echo "$src_dir")

# Prompt to ask the user for the destination directory
echo "Please enter the destination directory:"
read dest_dir

# Evaluate the destination directory to handle expressions
dest_dir=$(eval echo "$dest_dir")

# Check if the source directory exists
if [ ! -d "$src_dir" ]
then
    echo "Error: Source directory does not exist."
    echo
    exit 1
fi

# Check if the destination directory exists
if [ ! -d "$dest_dir" ]
then
    echo "Error: Destination directory does not exist."
    echo
    exit 1
fi

# Create a variable to store the list of .log files in the source directory
log_files=$(ls "$src_dir"/*.log 2> /dev/null)

# Check if there are any .log files in the source dir
if [ -z "$log_files" ]
then
    echo "No .log files found in the source directory."
    echo
    exit 0
fi

# Loop through each .log file and move it to the destination dir
for file in $log_files
do
    mv "$file" "$dest_dir"
    if [ $? -eq 0 ]
    then
        echo "Moved $file to $dest_dir"
    else
        echo "Failed to move $file"
    fi
done


echo

