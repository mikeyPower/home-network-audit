#!/bin/sh
# Get ip address information of current network
ip_address="$(ip -f inet addr show wlan0)"
# Second sed removes everything up until the first space
ip_range="$(echo "$ip_address" | sed -n 's/^ *inet \([.0-9]\)/\1/p' |  sed 's/\s.*$//')"
echo $ip_range
# Get current timestamp
timestamp=$(date +%s)
# Run NMap simply looking for active host while disabling both port scans (-sn) and dns resolution (-n)
nmap -sn -n "${ip_range}" -oX nmap_data/nmap_"${timestamp}".xml
