#!/bin/bash

cd `dirname $0`
cd rpi-seismometer
pkill -f ~/rpi-seismometer/seismic_scale.py
pkill shind
sleep 1
mv shind.csv shind_data_$(date +%Y%m%d).csv
touch shind.csv
sleep 1
shind
