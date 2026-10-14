Output="system-report.txt"
echo "Linux System Health Report" > $Output
echo "--------------------------" >> $Output
echo "Hostname: $(hostname)" >> $Output
echo "Kernel: $(uname -r)" >> $Output
DISK=$(df -h / | awk 'NR==2{print $5}')
echo "Disk Usage: / — $DISK used" >> $Output
Mem_used=$(free -h | awk 'NR==2{print $3}')
Mem_total=$(free -h | awk 'NR==2{print $2}')
echo "Memory Usage: $Mem_used/$Mem_total" >> $Output
echo "Top Process" >> $Output
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6 >> $Output