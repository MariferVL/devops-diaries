#!/bin/bash
# set_permissions.sh
# Purpose: Set read, write, and execute permissions for the owner of all .sh files in a specified directory or in the current directory if no directory is specified.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line
echo

# Check if the user provided a directory
if [ -z "$1" ]
then
    echo "📂 No directory specified. Using the current directory."
    directory=$(pwd)
else
    directory=$1
    echo "📂 Using the specified directory: $directory"
fi

# Inform the user about the action being performed
echo "🔄 Setting read, write, and execute permissions for the owner of all .sh files in $directory..."

# Loop through each .sh file in the specified directory
for file in "$directory"/*.sh
do
    # Check if the file exists (to handle cases where no .sh files are found)
    if [ -e "$file" ]
    then
        # Set permissions for the owner
        chmod u+rwx "$file"
        if [ $? -eq 0 ]
        then
            echo "✅ Permissions set for $file"
        else
            echo "❌ Failed to set permissions for $file"
        fi
    else
        echo "❌ No .sh files found in $directory."
        break
    fi
done

# Inform the user that the operation is complete
echo "✔️ All permissions have been set."


echo

