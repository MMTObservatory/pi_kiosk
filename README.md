# pi_kiosk
Configuration and instructions for setting up a Raspberry Pi web kiosk for telstat and other displays.

The configuration and scripts here are derived from the tutorial at https://pimylifeup.com/raspberry-pi-kiosk/.
That tutorial assumes you are starting from a full Raspbian install. Starting with Raspbian lite requires installing
several basic dependencies such as `lightdm` and `chromium-browser` and isn't recommended. The default user, `pi`, is used
here as it is in the tutorial.

Follow the tutorial to install the needed dependencies and configure `kiosk.service` so the kiosk can be managed by `systemctl`.
Then copy one of the bash scripts to `/home/pi/kiosk.sh` and, if needed, customize the URL or URLs. It is recommended to install the
`xsession` file as `/home/pi/.xsession` (and make it executable, if it isn't already) so that the kiosk browser is the only
window running on the display.
