#!/bin/bash

cd

sudo apt update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove
sudo apt -y autoclean

sudo raspi-config nonint do_vnc 0
sudo raspi-config nonint do_ssh 0
sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_boot_behaviour B3

  echo Install Python3
  sudo apt -y install python3

  echo Install vim
  sudo apt -y install vim

python3 -m pip install spidev

cd Seismograph
  crontab seis_cron.txt
  rm -r old

  echo All setup is complete.
  echo Automatically reboots after 15 seconds.
  sleep 15
  echo reboot...
  sudo reboot
