# lenovo-temperature-check
A simple script utilizing ExtremeCooling4Linux for Lenovo Ideapad 15ARH05

Tested on Arch Linux
# Depends on package
  bc [Comparisons inside the bash file]
  
  lm-sensors [Sensors]
  
  jq [JSON Parser]
  
  extremecooling4linux (AUR) [Set Fan Speed to Maximum]
  
# Installation
  Make Folder /opt/lenovo-temperature-check
  
  Move temperaturecheck.sh to /opt/lenovo-temperature-check
  
  Move lenovo-temperature-check to /etc/systemd/system/
  
  One-Liner:
  ```
git clone https://github.com/akei-ai/lenovo-temperature-check; cd lenovo-temperature-check; sudo mkdir /opt; sudo mkdir /opt/lenovo-temperature-check; sudo cp ./temperaturecheck.sh /opt/lenovo-temperature-check; sudo cp ./lenovo-temperature-check.service /etc/systemd/system/ 
  ```
# Configuration
# Rationale
My laptop: Ideapad Gaming 3i 15ARH05, doesn't actually try to cool itself down when temperatures are high, causing the ACPI to freak out and set the Nvidia Geforce 1650Ti to be sent into throttling hell with 5W of power indefinitely for the live session. This is not fun since I'll have to restart to set back the GPU into 50W.

