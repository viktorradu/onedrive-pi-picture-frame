#!/bin/bash

cd /home/wall1/onedrive-pi-picture-frame

clear

setterm -powersave off -blank

fbi -T 2 -a -noverbose -blend 200 -u -t 300 -1 -l ./index > /dev/null 2>&1

