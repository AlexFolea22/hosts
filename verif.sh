#!/bin/bash

while IFS= read -r line; do
    ip=$(echo $line | awk '{print $1}')
    host=$(echo $line | awk '{print $2}')

    # Verifică dacă IP-ul este valid (format IPv4)
    if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo "IP-ul $ip asociat cu hostul $host este valid."
    else
        echo "IP-ul $ip asociat cu hostul $host nu este valid."
    fi
done < /etc/hosts
