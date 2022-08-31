#!/bin/bash

while true
do
    ping -c 1 192.168.234.1 &> /dev/null
    if [[ $? -ne 0 ]]; then
        curl 'http://192.168.234.1/login?' --data 'username=21B&password=269'
    else
        echo 'OK'
    fi
    sleep 5
done
