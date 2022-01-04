#!/bin/bash

cd `dirname $0`
cd rpi-seismometer
sudo pkill -f ~/Seismograph/kasokudo_py3.py
sleep 1
mv kasokudo.csv kasokudo_data_$(date +%Y%m%d).csv
touch kasokudo.csv
python3 /home/pi/Seismograph/kasokudo_py3.py >> /home/pi/Seismograph/kasokudo.csv
