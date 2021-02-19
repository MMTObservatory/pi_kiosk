#!/bin/bash

xset s off
xset s noblank
xset -dpms

unclutter -idle 2 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal/' /home/pi/.config/chromium/Default/Preferences

/usr/bin/chromium-browser --hide-scrollbars --enable-native-gpu-memory-buffers --start-maximized --window-size=1920,1080 --disable-features=TranslateUI --noerrdialogs --disable-infobars --incognito --kiosk http://ops.mmto.arizona.edu/telstat/observer-weather.php http://ops.mmto.arizona.edu/telstat/observer.php & 

while true; do
    xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
    sleep 10
done
