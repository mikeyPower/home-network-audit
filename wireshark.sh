#!/bin/bash
# Here we are going to run wireshark, outputting the result to file test
timestamp=$(date +%s)
tshark -i wlan0 -f 'port http' -I -w wireshark_data/wireshark_"${timestamp}".pcapng 
