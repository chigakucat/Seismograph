# -*- Coding: utf-8 -*-
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


data = pd.read_csv('.csv',encoding = 'UTF8', names = ['time','x', 'y', 'z', 'frame','f','g','h','i','j','k','l'])
#plt.plot(data['time'], data['x'])
#plt.plot(data['time'], data['y'])
plt.plot(data['time'], data['z'], color ='black', linewidth =0.9) 

plt.savefig('graph.png')
plt.show()
