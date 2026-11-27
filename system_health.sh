
#!/bin/bash

echo "===== SYSTEM HEALTH MONITOR ====="

CPU_LIMIT=80
MEMORY_LIMIT=80
DISK_LIMIT=80

# CPU Usage
CPU=$(LC_ALL=C top -bn1 | awk -F'[, ]+' '/Cpu\(s\)/ {
  for(i=1;i<=NF;i++)
    if($i ~ /id/) {
      print 100-$(i-1)
      exit
    }
}')
echo "CPU Usage: ${CPU}%"

if awk "BEGIN {exit !($CPU > $CPU_LIMIT)}"; then
  echo "ALERT: High CPU Usage!"
fi

# Memory Usage
MEMORY=$(free | awk '/Mem:/ {printf "%.0f", $3/$2*100}')
echo "Memory Usage: ${MEMORY}%"

if [ "$MEMORY" -gt "$MEMORY_LIMIT" ]; then
  echo "ALERT: High Memory Usage!"
fi

# Disk Usage
DISK=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')
echo "Disk Usage: ${DISK}%"

if [ "$DISK" -gt "$DISK_LIMIT" ]; then
  echo "ALERT: High Disk Usage!"
fi

# Running Processes
PROCESS_COUNT=$(ps -e --no-headers | wc -l)
echo "Running Processes: $PROCESS_COUNT"

echo "===== HEALTH CHECK COMPLETED ====="
