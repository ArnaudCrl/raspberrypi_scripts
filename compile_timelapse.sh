ls /home/pi/timelapse/*.jpg| awk 'BEGIN{ a=0 }{ printf "mv %s /home/pi/timelapse/%04d.jpg\n", $0, a++ }' | bash


#!/bin/bash
DATE=$(date +"%d-%m-%Y")
avconv -y -i /home/pi/timelapse/%4d.jpg -r 25 -vcodec libx264 -q:v 3 /home/pi/timelapse/$DATE.mp4
