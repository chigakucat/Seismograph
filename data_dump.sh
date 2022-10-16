#!/bin/bash

cd
cd Seismograph
sudo pkill -f kasokudo_py3.py
sleep 1
mv kasokudo.csv kasokudo_data_$(date +%Y%m%d).csv
touch kasokudo.csv
python3 kasokudo_py3.py >> kasokudo.csv
