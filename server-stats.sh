#!/bin/bash
# A simple script to display server statistics
echo "Server Statistics"
echo "=================="
echo "Uptime:"
uptime
echo ""
echo "Disk Usage:"
df -h
echo ""
echo "Memory Usage:"
free -h
echo ""
echo "Top 5 Memory Consuming Processes:"
ps aux --sort=-%mem | head -n 6
echo ""
echo "Network Statistics:"
netstat -tuln | head -n 10

top -bn1 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
           awk '{print "CPU Usage: " 100 - $1"%"}'

echo "End of Server Statistics"