#!/bin/bash

xset s off
xset s noblank
xset -dpms

unclutter -idle 2 -root &

/usr/bin/webview -h 1080 -w 1920 -u http://ops.mmto.arizona.edu/telstat/observer-weather.php
