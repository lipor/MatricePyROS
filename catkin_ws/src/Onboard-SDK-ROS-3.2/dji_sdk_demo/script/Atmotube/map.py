#!/usr/bin/env python

from mpl_toolkits.basemap import Basemap
import matplotlib.pyplot as plt

map = Basemap(llcrnrlat = 45.507269, llcrnrlon = -122.691631, urcrnrlat = 45.532517, urcrnrlon = -122.663240, resolution='i', projection='merc')

map.readshapefile('maps/lines', 'lines')
map.readshapefile('maps/multilinestrings', 'multilinestrings')
map.readshapefile('maps/multipolygons', 'multipolygons')
map.readshapefile('maps/points', 'points')

plt.show()

