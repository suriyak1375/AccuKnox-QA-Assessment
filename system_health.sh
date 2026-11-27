
#!/bin/bash

echo "===== SYSTEM HEALTH MONITOR ====="

# CPU Usage
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
echo "CPU Usage: $CPU%"

# Memory Usage
free -h

# Disk Usage
echo "Disk Usage:"
df -h /

# Running Processes
echo "Running Processes:"
ps -e --no-headers | wc -l

# Alerts
echo "===== HEALTH CHECK COMPLETED ====="
