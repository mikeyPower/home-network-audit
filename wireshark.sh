#!/bin/bash
#Here we are going to run wireshark filtering (-f) only for traffic over http while running tshark in monitor mode
#outputting the result to file to wireshark_data folder with stopping after the file reaches a file size (-a filesize:) of 10000KB(10MB)
timestamp=$(date +%s)
tshark -i wlan0 -f 'port http' -I -a filesize:10000 -w wireshark_data/wireshark_"${timestamp}".pcapng 
