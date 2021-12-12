#!/bin/bash

cd `dirname $0`
cd rpi-seismometer
pkill -f ~/Seismograph/kasokudo_py3.py
sleep 1
mv shind.csv shind_data_$(date +%Y%m%d).csv
touch shind.csv
sleep 1
python3 ~/Seismograph/kasokudo_py3.py >> kasokudo.csv
