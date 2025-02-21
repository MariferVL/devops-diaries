#!/bin/bash
# schedule_backup.sh
# Purpose: Set up a cron job to run a specified backup script every day at midnight.
# If no script is specified, the default is to run backup_conf_files.sh.
# Author: MariferVL
# Date: 20-02-2025

echo

# Check if a script argument is provided
if [ -z "$1" ]; then
    # Default backup script if no argument is provided
    backup_script="$(pwd)/backup_conf_files.sh"
    echo "No backup script specified. Using default script: $backup_script"
else
    # Use the provided argument as the backup script
    backup_script="$1"
    # Check if the provided script exists and is executable
    if [ ! -f "$backup_script" ]; then
        echo "Error: The specified script '$backup_script' does not exist."
        exit 1
    fi
    if [ ! -x "$backup_script" ]; then
        echo "Error: The specified script '$backup_script' is not executable."
        exit 1
    fi
fi

# Cron job entry
cron_job="0 0 * * * $backup_script"

# Add the cron job to the crontab if it doesn't already exist
(crontab -l | grep -v -F "$backup_script" ; echo "$cron_job") | crontab -

# Inform the user that the cron job has been set up
echo "Cron job set up to run the backup script '$backup_script' every day at midnight."

echo
