#!/usr/bin/env python

from mpl_toolkits.basemap import Basemap
from matplotlib import cm
import matplotlib.pyplot as plt
import datetime
import numpy as np
from sklearn.gaussian_process import GaussianProcessRegressor
from sklearn.gaussian_process.kernels import Matern, RBF, ConstantKernel as C
from itertools import product

#This file is to read data from the file that main.py is spitting data into in real time, and plot that data in real time. It also does a gaussian process regression on the points and displays that in. real. time. Hooray!
class Plotter():
    def run(self):
        global m
        global start_index
	start_index = 0
	#This is around the PSU campus of downtown portland
        m = Basemap(llcrnrlat = 45.50, llcrnrlon = -122.691631, urcrnrlat = 45.532517, urcrnrlon = -122.663240, resolution='i', projection='merc')
	m.drawmapboundary(fill_color='#DDEEFF')
	m.drawcoastlines(color='gray', zorder=2)
	m.drawcountries(color='gray', zorder=2)
	m.drawstates(color='gray', zorder=2)
	
	#Coincidentally, the only map of portland in the correct file format (shapefile) that I could find was of the PSU campus. 
	#You can use the online maps with arcgis (see https://basemaptutorial.readthedocs.io/en/latest/backgrounds.html#arcgisimage) if you want, 
	#but that, of course, requires an internet connection to use. So for whatever region you want to use that for, just download a shapefile of that.
	#Or you don't need that if you don't want to. Who am I to tell you what to do?
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/lines', 'lines')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/multilinestrings', 'multilinestrings')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/multipolygons', 'multipolygons')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/points', 'points')

	#Puts the plot in interactive mode. Good for lots of reasons but namely so that it doesn't just stop at plt.show()
	plt.ion()
	plt.show()
        
	lats = []
	lons = []
	temps = []
	#(While the plot is open)
	while plt.get_fignums():
	    #reads the file
	    to_plot = self.read_file()
            if to_plot != []:
	        for point in to_plot:
	            data = point.split(" ")
		    #if the GPS data is exactly 0.0, that means that the drone doesn't have a GPS signal and this sort of just breaks everything. Sorry if you're legitimately trying to take a data point at 0.0,0.0. Consider moving, maybe?
		    if data[1] == 0.0 or data[2] == 0.0:
			break
	            lats.append(float(data[1]))
	            lons.append(float(data[2]))
		    #I'm just plotting temperature because it was easier to vary and test than VOC or humidity.
		    #I capped the range of temperature from -30 to 40 degrees C because I cannot imagine anything outside of that range. This is purely arbitrary.
	            adjusted_temp = (float(data[5][:-1]) + 30.0) / 70.0 #0 to 1
		    if adjusted_temp < 0:
			adjusted_temp = 0
		    elif adjusted_temp > 1:
			adjusted_temp = 1

	            temps.append(adjusted_temp)

	            self.plot_data(data)
		    if not plt.get_fignums():
			break
		#If it tries to do a gaussian process regression with anything less than 5 or 7 ish points, it sort of freaks out and does nothing. 
		#So I made it start at 10 just to be safe
		if len(lats) > 10:
		    #the p at the end of these variables is the predictions
		    latp, lonp, tempp = self.gaussian(lats, lons, temps)
                    m.contourf(lonp, latp, tempp, cmap = cm.plasma, latlon = True)
		    plt.draw()
		    plt.pause(0.1)
	    else:
		#If you don't update the graph with a draw() every few seconds, the plot turns grey and sort of times out. 
		#So I do this.
		plt.draw()
		plt.pause(0.1)
        plt.show()

    #Plots the data on the basemap. 
    def plot_data(self,data):
	time = data[0]        
	lat = data[1]
        lon = data[2]
	voc = data[3]
	humidity = data[4]
	temp = data[5][:-1]
        adjusted_temp = (float(temp) + 30.0) / 70.0
        m.plot(float(lon), float(lat), color=cm.plasma(adjusted_temp), marker='o', latlon=True) 

    #Reads the file. Returns new, which is an array of data arrays
    def read_file(self):
	global start_index
	now = datetime.datetime.now()

	#Note: This path is stil from root, because it has to be run from root. Woah.

	#f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/' + now.strftime("%Y-%m-%d") + '.dat', 'r+')

	f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/sample.dat', 'r+')
        lines = f.readlines()
	new = []
	#only reading lines that we haven't before
	if lines != []:
	    new = lines[start_index:]
	    start_index = len(lines)
        f.close()
	return new

    #This takes in the lats, lons, and temps (arrays) and returns latp, lonp, and tempp (matrices) that are produced from a gaussian process regression 
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
	gp.fit(coords, temps) 

	latlon = np.array(list(product(lat_sample, lon_sample))) #these are the sample points
	y_pred, MSE = gp.predict(latlon, return_std=True) #returns mean and the std dev

	latp, lonp = latlon[:,0].reshape(res,res), latlon[:,1].reshape(res,res)
	tempp = np.reshape(y_pred,(res,res))
	tempp = np.clip(tempp, 0, max(temps))
	return latp, lonp, tempp

if __name__ == "__main__": 
    start_index = 0
    plotter = Plotter()
    plotter.run()






























	
