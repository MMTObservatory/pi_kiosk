#!/bin/bash

xset s off
xset s noblank
xset -dpms

unclutter -idle 2 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal/' /home/pi/.config/chromium/Default/Preferences

/usr/bin/chromium-browser --hide-scrollbars --enable-native-gpu-memory-buffers --start-maximized --window-size=1930,1090 --disable-features=TranslateUI --noerrdialogs --disable-infobars  --autoplay-policy=no-user-gesture-required --incognito --kiosk http://ops.mmto.arizona.edu/telstat/observer.php
