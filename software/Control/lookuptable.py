import numpy as np
import matplotlib.pyplot as plt

angles = np.linspace(0, 2*np.pi, 360)
sines = 100*((np.sin(angles) + 1) / 2)
sines = sines.astype(int)

plt.plot(angles * 180 / np.pi, sines, '*')

count = 0
f= open('SineLookup.txt','w+')
for sine in sines:
     f.write('{:<2}, '.format(sine))
     count += 1
     
     if count >= 20:
        f.write("\n")
        count = 0

f.close()

print(sines)
plt.show()