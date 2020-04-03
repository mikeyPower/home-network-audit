#!/bin/bash
# Script to analyse nmap data such as unique devices
filename="$1"
# echo "${filename}"
emails=$(grep 'address addr' "${filename}") | awk -F">" '{print $2}' | awk -F"<" '{print $1}'
#echo "${emails}"
for i in ${!emails[*]}
do
  echo "$i" "${emails[$i]}"
  # instead of echo use the values to send emails, etc
done
