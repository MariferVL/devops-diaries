#!/bin/bash
# monitor_cpu.sh
# Purpose: Continuously check CPU usage every 5 seconds and alert the user if it exceeds 90%.
# Author: MariferVL
# Date: 20-02-2025

# Add a blank line
echo

# Function to check CPU usage
check_cpu_usage() {
    # Get the current CPU usage
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | \
                sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
                awk '{print 100 - $1}')

    # Alert the user if CPU usage exceeds 90%
    if (( $(echo "$cpu_usage > 90" | bc -l) )); then
        echo "⚠️ High CPU usage detected: ${cpu_usage}%"
    else
        echo "🟢 CPU usage is normal: ${cpu_usage}%"
    fi
}

# Loop to check CPU usage every 5 seconds
while true; do
    check_cpu_usage
    sleep 5
done

echo

# Note: For production environments, consider creating a system service
# to run this script continuously. This ensures the script runs in the
# background and restarts automatically if it fails. See the following
# steps to create a system service for this script:
# 1. Create a service file in /etc/systemd/system/monitor_cpu.service
# 2. Add the necessary service configuration
# 3. Reload systemd with 'sudo systemctl daemon-reload'
# 4. Start the service with 'sudo systemctl start monitor_cpu.service'
# 5. Enable the service to start on boot with 'sudo systemctl enable monitor_cpu.service'

