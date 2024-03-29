# pi_kiosk

The configuration files and scripts here are derived from the tutorial at https://pimylifeup.com/raspberry-pi-kiosk/.
That tutorial assumes you are starting from a full Raspbian install. Starting with Raspbian-lite requires installing
several basic dependencies such as `lightdm` and `chromium-browser` and isn't recommended. The default user, `pi`, is used
here as it is in the tutorial.

Follow the tutorial to install the needed dependencies and configure `kiosk.service` so the kiosk can be managed by `systemctl`.
Then copy one of the bash scripts to `/home/pi/kiosk.sh` and, if needed, customize the URL or URLs. It is recommended to install the
`xsession` file as `/home/pi/.xsession` so that the kiosk browser is the only window running on the display.

## Notes

* JDG, 2021-05-07:  I've added a lightdm.conf file under ./lightdm to this repo.  Copy this file to /etc/lightdm/ to prevent the RPi from going to sleep.

* JDG, 2021-05-07:  I've also added an ansible playbook under ./ansible that will modify the /etc/lightdm/lightdm.conf file, if needed, to prevent the RPi from going to sleep.  If you copy the file in the previous bullet, you don't need to run the ansible playbook.

* JDG, 2021-05-07: The chromium-browser command-line options have been modified to eliminated user input.  This allows the weather videos to start automatically without user input.

* The locations of `Boot Options` and `Desktop Autologin` have moved in recent versions of `raspi-config`, but they are clearly labeled.

* The monitor I used to test is not native `1920x1080` and I had to try a few of the options for that resolution in `raspi-config` to find
the one that worked properly (mode 82). This may or may not be an issue with true `1920x1080` displays. The `kiosk.sh` script will also
need to be modified if a different resolution is used, namely the `--window-size` parameter.

* A Raspberry Pi 3B with 1 GB of RAM was able to handle toggling between the TCS weather and observer pages without any issues.
The system load averaged around 2.5 out of 4 available cores. The CPU temp held steady at 60 C with the case open at 18 C ambient.
Putting the cap on the case raised the CPU temp 2-3 C. A Pi 4 should be able to handle this task much more easily and should run cooler.
