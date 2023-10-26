#!/bin/bash

clear

nohup bash update.sh &

trap cleanup SIGINT

cleanup () {
    pkill -f "bash update.sh"
    exit
}

while true
do
    fbi -a -noverbose -blend 200 -u -t 3 -1 -l index
done

