#!/bin/bash
DATE=$(date +"%Y-%m-%d")
sudo raspistill -n -o /home/pi/share/timelapse/$DATE.jpg
