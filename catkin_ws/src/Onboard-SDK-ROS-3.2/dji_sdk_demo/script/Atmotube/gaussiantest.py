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
        global start_index
	start_index = 0
        m = Basemap(llcrnrlat = 45.50, llcrnrlon = -122.691631, urcrnrlat = 45.532517, urcrnrlon = -122.663240, resolution='i', projection='merc')
	m.drawmapboundary(fill_color='#DDEEFF')
	m.drawcoastlines(color='gray', zorder=2)
	m.drawcountries(color='gray', zorder=2)
	m.drawstates(color='gray', zorder=2)

        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/lines', 'lines')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/multilinestrings', 'multilinestrings')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/multipolygons', 'multipolygons')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/points', 'points')

	plt.ion()
	plt.show()
        
	lats = []
	lons = []
	temps = []


	while plt.get_fignums():
	    to_plot = self.read_file()
            if to_plot != []:
	        for point in to_plot:
	            data = point.split(" ")
	            lats.append(float(data[1]))
	            lons.append(float(data[2]))
	            adjusted_temp = (float(data[5][:-1]) + 30.0) / 70.0 #0 to 1
		    if adjusted_temp < 0:
			adjusted_temp = 0
		    elif adjusted_temp > 1:
			adjusted_temp = 1
	            temps.append(adjusted_temp)
	            self.plot_data(data)
		    if not plt.get_fignums():
			break
		print 5
		latp, lonp, tempp = self.gaussian(lats, lons, temps)
                m.contourf(lonp, latp, tempp, cmap = cm.plasma, latlon = True)
		plt.draw()
		plt.pause(0.1)

	    else:
		plt.draw()
		plt.pause(0.1)
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

    def read_file(self):
	global start_index
	now = datetime.datetime.now()
	#f = open('data/' + now.strftime("%Y-%m-%d") + '.dat', 'r+')	
	#f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/' + now.strftime("%Y-%m-%d") + '.dat', 'r+')

	f = open('data/2019-07-25aaaa.dat', 'r+')
        lines = f.readlines()
	new = []
	if lines != []:
	    new = lines[start_index:]
	    start_index = len(lines)
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
	y_pred, MSE = gp.predict(latlon, return_std=True) #returns mean and the std dev

	latp, lonp = latlon[:,0].reshape(res,res), latlon[:,1].reshape(res,res) #could use meshgrid for this?
	tempp = np.reshape(y_pred,(res,res))
	tempp = np.clip(tempp, 0, max(temps))
	return latp, lonp, tempp

if __name__ == "__main__": 
    start_index = 0
    plotter = Plotter()
    plotter.run()






























	
