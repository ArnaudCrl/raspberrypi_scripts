#!/bin/bash

# If image files are not in the correct format
# ls /home/pi/timelapse/*.jpg| awk 'BEGIN{ a=0 }{ printf "mv %s /home/pi/timelapse/%04d.jpg\n", $0, a++ }' | bash

DATE=$(date +"%d-%m-%Y")

# Old version
# avconv -y -i /home/pi/timelapse/%4d.jpg -r 25 -vcodec libx264 -q:v 3 /home/pi/timelapse/$DATE.mp4

# Improved version
ffmpeg -framerate 25 -i /home/pi/Timelapse/images/%4d.jpg -s:v 1920x1080 -c:v libx264 -crf 17 -pix_fmt yuv420p /home/pi/Timelapse/videos/$DATE.mp4
