#!/bin/sh
raspivid -w 1280 -h 720 -fps 25 -o - -t 54000000 -b 1400000 -awb auto -ex auto -ev -2 -drc med -sh 96 -co 0 -br 50 -sa 5 |ffmpeg -i - -vcodec copy -an -f flv rtmp://l$
