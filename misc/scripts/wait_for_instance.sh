#!/bin/bash

while [ ! -f ls -al ]; do
  echo -e "\033[1;36mWaiting for init..."
  if [ -f /usr/bin/python3 ] && [ ! -f /usr/bin/python ]; then 
   ln --symbolic /usr/bin/python3 /usr/bin/python; 
  fi
  sleep 5
done