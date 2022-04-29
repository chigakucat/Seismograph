# -*- Coding: utf-8 -*-
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

figsize_px = np.array([1366, 671])
dpi = 96
figsize_inch = figsize_px / dpi
fig, ax = plt.subplots(figsize=figsize_inch, dpi=dpi)
plt.subplots_adjust(left=0.04, right=0.98, bottom=0.04, top=0.98)

data = pd.read_csv('<file_name>.csv', encoding = 'UTF8', names = ['time', 'date', 'x', 'y', 'z', 'frame', 'f'])


plt.plot(data['time'], data['x'], color = 'black', linewidth = 0.9)

plt.savefig("x.png")
plt.show()


figsize_px = np.array([1366, 671])
dpi = 96
figsize_inch = figsize_px / dpi
fig, ax = plt.subplots(figsize=figsize_inch, dpi=dpi)
plt.subplots_adjust(left=0.04, right=0.98, bottom=0.04, top=0.98)
plt.plot(data['time'], data['y'], color = 'black', linewidth = 0.9)

plt.savefig("y.png")
plt.show()


figsize_px = np.array([1366, 671])
dpi = 96
figsize_inch = figsize_px / dpi
fig, ax = plt.subplots(figsize=figsize_inch, dpi=dpi)
plt.subplots_adjust(left=0.04, right=0.98, bottom=0.04, top=0.98)
plt.plot(data['time'], data['z'], color ='black', linewidth =0.9)

plt.savefig("z.png")
plt.show()
