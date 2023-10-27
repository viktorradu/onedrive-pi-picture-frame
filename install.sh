#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#apt-get update && apt-get install fbi imagemagick

cp -rf ./pictureframe /etc/init.d/
chmod +x /etc/init.d/pictureframe

update-rc.d pictureframe defaults