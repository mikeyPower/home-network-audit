#!/bin/bash
# Here we are going to run wireshark, outputting the result to file test
timestamp=$(date +%s)
tshark -i wlan0 -w wireshark_"${timestamp}".pcapng
