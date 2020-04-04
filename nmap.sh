#!/bin/sh
# Run NMap simply looking for active host while disabling both port scans (-sn) and dns resolution (-n)
timestamp=$(date +%s)
nmap -sn -n 111.111.111.0/24 -oX nmap_data/nmap_"${timestamp}".xml
