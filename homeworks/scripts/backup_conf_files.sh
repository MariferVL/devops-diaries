#!/bin/bash
# backup_conf_files.sh
# Purpose: Copy all .conf files from /etc/ to a backup directory with a timestamp.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line
echo

# Generate the timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Check if the user provided a backup directory
if [ -z "$1" ]; then
    backup_dir="./conf_backup_$timestamp"
    echo "No backup directory specified."
    echo "Creating backup directory in the current directory: $backup_dir"
else
    backup_dir="$1/conf_backup_$timestamp"
    echo "Using specified backup directory: $backup_dir"
fi

# Create the backup directory
mkdir -p "$backup_dir"

# Copy all .conf files from /etc/ to the backup directory
echo "Copying .conf files from /etc/ to $backup_dir..."
cp /etc/*.conf "$backup_dir"

# Inform the user that the backup is complete
echo "Backup complete. All .conf files have been copied to $backup_dir."

echo

