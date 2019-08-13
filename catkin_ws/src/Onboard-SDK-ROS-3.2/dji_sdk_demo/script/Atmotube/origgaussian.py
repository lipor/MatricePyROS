#!/usr/bin/env python

from mpl_toolkits.basemap import Basemap
from matplotlib import cm
import matplotlib.pyplot as plt
import datetime
import numpy as np
from sklearn.gaussian_process import GaussianProcessRegressor
from sklearn.gaussian_process.kernels import Matern, RBF, ConstantKernel as C
from itertools import product

class Plotter():
    def run(self):
        global m
        old_data = []
        m = Basemap(llcrnrlat = 45.507269, llcrnrlon = -122.691631, urcrnrlat = 45.532517, urcrnrlon = -122.663240, resolution='i', projection='merc')
	#m = Basemap(projection='merc',llcrnrlat=-80,urcrnrlat=80, llcrnrlon=-180,urcrnrlon=180,lat_ts=20,resolution='c') 

	m.drawmapboundary(fill_color='#DDEEFF')
	m.drawcoastlines(color='gray', zorder=2)
	m.drawcountries(color='gray', zorder=2)
	m.drawstates(color='gray', zorder=2)

        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/lines', 'lines')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/multilinestrings', 'multilinestrings')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/multipolygons', 'multipolygons')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/points', 'points')
	#plt.ion()
	#plt.show()
        
	lats = []
	lons = []
	temps = []
	to_plot = self.read_file(True)

	for line in to_plot:
	    data = line.split(" ")
	    lats.append(float(data[1]))
	    lons.append(float(data[2]))
	    adjusted_temp = (float(data[5][:-1]) + 30.0) / 70.0
	    temps.append(adjusted_temp)
	    self.plot_data(data)
	    if len(lats) > 10:
	        latp, lonp, tempp = self.gaussian(lats, lons, temps)

	        unadjusted_tempp = []
	        new = []
       	        for i in range(len(tempp)):
                    new = []
	            for j in range(len(tempp[0])):
		        new.append(tempp[i][j] * 70.0 -30)
	            unadjusted_tempp.append(new)
	        print "I am the waffle man"
	        m.contourf(lonp, latp,unadjusted_tempp, cmap = cm.plasma, latlon = True)




	to_plot = []
 	#plt.draw()
	#plt.pause(0.01)
#        while True: 
#	    data = self.read_file(False).split(" ")
#	    lats.append(line[1])
#	    lons.append(line[2])
#	    temps.append(line[5])
#	    self.plot_data(data)
#            plt.draw()
#	    plt.pause(0.01)
#            if not plt.get_fignums():
#                break
#            break
        plt.show()

    def plot_data(self,data):
	time = data[0]        
	lat = data[1]
        lon = data[2]
	voc = data[3]
	humidity = data[4]
	temp = data[5][:-1]
        adjusted_temp = (float(temp) + 30.0) / 70.0
        m.plot(float(lon), float(lat), color=cm.plasma(adjusted_temp), marker='o', latlon=True) 
	plt.draw()
	plt.pause(0.1)

    def read_file(self, old):
	now = datetime.datetime.now()
	#f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/' + now.strftime("%Y-%m-%d") + '.dat', 'r+')

	f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/2019-07-25aaaa.dat', 'r+')
        new = f.readlines()
        #if we only want new data, only return the last line of the file
        if not old:
            new = new[len(new)-1]
        f.close()
	print new
	return new

    def gaussian(self, lats, lons, temps):
	coords = np.zeros((len(lats),2))
	for ii in range(len(lats)): 
            coords[ii,0] = lats[ii] #column 1 is lats
    	    coords[ii,1] = lons[ii] #column 2 is lons
	res = 100
	# Generates a bunch of lats and lons
        lat_sample = np.linspace(float(min(lats)), float(max(lats)), res) 
	lon_sample = np.linspace(float(min(lons)), float(max(lons)), res) 
	kernel = C(1.0, (1e-3, 1e4)) * RBF([5,5], (1e-2, 1e2)) #constant kernel just scales it
	gp = GaussianProcessRegressor(kernel=kernel, n_restarts_optimizer=20)

	gp.fit(coords, temps) #idk exactly what fit does but it *Works(TM)*

	latlon = np.array(list(product(lat_sample, lon_sample))) #these are the sample points
	print "before predictions"
	y_pred, MSE = gp.predict(latlon, return_std=True) #returns mean and the std dev
	print "after predictions"

	latp, lonp = latlon[:,0].reshape(res,res), latlon[:,1].reshape(res,res) #could use meshgrid for this?
	tempp = np.reshape(y_pred,(res,res))
	tempp = np.clip(tempp, 0, max(temps))
	return latp, lonp, tempp

if __name__ == "__main__":
    plotter = Plotter()
    plotter.run()
