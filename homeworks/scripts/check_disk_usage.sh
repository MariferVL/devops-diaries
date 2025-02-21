#!/bin/bash
# check_disk_usage.sh
# Purpose: Display the current disk usage percentage and warn the user if it exceeds 80%.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line 
echo

# Check the current disk usage percentage
disk_usage=$(df / | awk 'NR==2 { print $5 }' | sed 's/%//g')

# Display the current disk usage percentage
echo "💾 Current disk usage is: $disk_usage%"

# Warn the user if disk usage exceeds 80%
if [ "$disk_usage" -gt 80 ]
then
    echo "⚠️  Warning: Disk usage is above 80%."
fi


echo

