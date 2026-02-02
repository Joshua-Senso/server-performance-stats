#!/bin/bash

echo "=============================="
echo " SERVER PERFORMANCE STATS"
echo "=============================="
echo

# CPU usage
echo "CPU Usage:"
top -bn1 | awk '/Cpu\(s\)/ {print "Used: " 100 - $8 "%"}'
echo

# Memory usage
echo "Memory Usage:"
free -h | awk '
/Mem:/ {
  used=$3; total=$2;
  used_pct=(used/total)*100;
  printf "Used: %s / %s (%.2f%%)\n", used, total, used_pct
}'
echo

# Disk usage
echo "Disk Usage:"
df -h / | awk 'NR==2 {printf "Used: %s / %s (%s used)\n", $3, $2, $5}'
echo

# Top 5 CPU processes
echo "Top 5 Processes by CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo

# Top 5 Memory processes
echo "Top 5 Processes by Memory:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo

echo "=============================="
echo " END OF REPORT"
echo "=============================="
