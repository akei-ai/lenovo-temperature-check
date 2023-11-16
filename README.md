# lenovo-temperature-check
A simple script utilizing ExtremeCooling4Linux for Lenovo devices that has weird or improper cooling support.

# Installation
  Make Folder /opt/lenovo-temperature-check
  Move temperaturecheck.sh to /opt/lenovo-temperature-check
  Move lenovo-temperature-check to /etc/systemd/system/
  
  One-Liner:
  ```
git clone https://github.com/akei-ai/lenovo-temperature-check; cd lenovo-temperature-check; sudo mkdir /opt; sudo mkdir /opt/lenovo-temperature-check; sudo cp ./temperaturecheck.sh /opt/lenovo-temperature-check; sudo cp ./lenovo-temperature-check.service /etc/systemd/system/ 
  ```
# Rationale
My laptop: Ideapad Gaming 3i 15ARH05, doesn't actually try to cool itself down when temperatures are high, causing the ACPI to freak out and set the Nvidia Geforce 1650Ti to be sent into throttling hell with 5W of power indefinitely for the live session.

