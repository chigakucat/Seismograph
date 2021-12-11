# -*- Coding: utf-8 -*-
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('test.csv', encoding = 'UTF8', names = ['time', 'date', 'x', 'y', 'z', 'frame', 'f'])
#plt.plot(data['time'], data['x'], color = 'black', linewidth = 0.9)
plt.plot(data['time'], data['y'], color = 'black', linewidth = 0.9)
#plt.plot(data['time'], data['z'], color ='black', linewidth =0.9) 

plt.show()
