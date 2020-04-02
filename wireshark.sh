#!/bin/bash
# Here we are going to run wireshark, outputting the packet tree and Hex/ASCII dump
# After restart network manager to get our signal back up
tshark -i wlan0 -x -V > test.txt
