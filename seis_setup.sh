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

python3 --version &> /dev/null
if [ $? -ne 0 ] ; then
  echo Install Python3
  sudo apt install python3
else
  echo Python3 is already installed.
fi

vim --version &> /dev/null
if [ $? -ne 0 ] ; then
  echo Install vim
  sudo apt install vim
else
  echo vim is already installed.
fi

python3 -m pip install spidev

cd Seismograph &> /dev/null
if [ $? -ne 0 ] ; then
  crontab seis_cron.txt
  rm -r old
  echo All setup is complete.
  echo Automatically reboots after 15 seconds.
  sleep 10
  echo reboot
  sudo reboot
else
  echo error.
fi