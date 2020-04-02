#!/bin/sh
# Run NMap simply looking for active host while disabling both port scans (-sn) and dns resolution (-n)
nmap -sn -n 111.111.111.0/24
