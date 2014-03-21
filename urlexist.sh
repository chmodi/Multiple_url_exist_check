#!/bin/bash
while read LINE; do 
  #curl -o /dev/null --silent --head --write-out '%{http_code}' "$LINE" 
response=$(curl -o /dev/null --silent --head --write-out '%{http_code}' "$LINE")
status_code=$(echo " $response" | sed -n '$p')
echo "$status_code, $LINE" >> target.csv
done < urllist.txt
