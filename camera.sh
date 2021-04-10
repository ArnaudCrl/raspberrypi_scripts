#!/bin/bash
DATE=$(date +"%H%M")
sudo raspistill -n -w 1920 -h 1080 -o /home/pi/timelapse/$DATE.jpg
