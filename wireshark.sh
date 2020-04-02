#!/bin/bash
# Here we are going to run wireshark, outputting the result to file test
tshark -i wlan0 -w test
