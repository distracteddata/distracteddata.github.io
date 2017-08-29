
###### [home..](https://distracteddata.github.io)
## Raspberry Pi

### Quick Setup:
1. Download [Noobs](https://www.raspberrypi.org/downloads/noobs/)
2. Download [SD Card Formatter](https://www.sdcard.org/downloads/formatter_4/)
3. Format SD Card (Don't use quick option), no Volume needed
4. Extract Noobs zip and copy contents to SD card
5. Insert SD card into Raspberry Pi
6. Power up Raspberry Pi and install the Raspbian distro
7. Click the wifi icon and connect to wireless
7. `sudo apt-get update`
8. `sudo apt-get upgrade`
9. Don't forget to change the default password!: `passwd`


---
### Remove Wolfram Whatever
1. `sudo apt-get purge wolfram-engine`
2. `sudo apt-get autoremove`
3. `sudo apt-get update`
4. `sudo apt-get upgrade`

---
### Enable SSH
1. `ifconfig` - retrieve IP address
2. `sudo raspi-config`
3. **Interfacing Options** > **Enable SSH**
4. ***Don't forget to change wifi password from default:*** `passwd`

---
### Enable Remote Desktop
1. `sudo apt-get install tightvncserver`
2. `sudo apt-get install xrdp`
