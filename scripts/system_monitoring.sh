#!/bin/bash

CPU_TRESHOLD=80
MEMORY_TRESHOLD=80
DISK_TRESHOLD=80

send_alert() {
    echo "$(tput setaf 1)ALERT: $1 usage exceeded treshold! Current value: $2%$(tput sgr0)" 
}

while true; do
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    cpu_usage=${cpu_usage%.*} # Convert to integer
    echo "Current CPU usage: $cpu_usage%"

    if ((cpu_usage >= CPU_TRESHOLD)); then
        send_alert "CPU" "$cpu_usage"
    fi

    memory_usage=$(free | awk '/Mem/ {printf("%3.1f", ($3/$2) * 100)}')
    echo "Current memory usage: $memory_usage%"
    memory_usage=${memory_usage%.*}
    if ((memory_usage >= MEMORY_TRESHOLD)); then
        send_alert "Memory" "$memory_usage"
    fi

    disk_usage=$(df -h / | awk '/\// {print $(NF-1)}')
    disk_usage=${disk_usage%?} #Remove the % sign
    echo "Current disk usage: $disk_usage%"

    if ((disk_usage >= DISK_TRESHOLD)); then
        send_alert "Disk" "$disk_usage"
    fi

    #Display current stats
    clear
    echo "Resource Usage:"
    echo "CPU: $cpu_usage%"
    echo "Memory $memory_usage%"
    echo "Disk: $disk_usage%"
    sleep 2
done
