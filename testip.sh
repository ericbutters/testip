#!/bin/bash

for (( j=111; j<254; j++ )); do
  for (( i=1; i<255; i++ )); do
  IP=$(ping -c 1 192.168.$j.$i)
  if [ "$(echo $IP | awk {'print $8'})" == "64" ]; then
    echo "--> " $(echo $IP | awk {'print $2'})
  fi
  done
done
