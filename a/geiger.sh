#!/bin/bash
/usr/bin/python /home/a/read_geiger.py &
mount -t cifs //192.168.0.125/Seagate-FreeAgent-Go-01421/ /home/pi/zyxel_photo -o noperm,username=admin,password=adrian >mount_zyxel.sh
sleep 5
/home/pi/folders2flickr/folders2flickr