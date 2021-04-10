#!/bin/bash
DATE=$(date +"%d-%m-%Y")
/home/pi/youtube-upload-master/bin/youtube-upload --title="Nancy_$DATE" /home/pi/timelapse/$DATE.mp4 --privacy unlisted --playlist "Pelotte" --description="Timelapse de la veille créée et publiée automatiquement chaque jour. Vue depuis Vandoeuvre sur la ville de Nancy"
