#!/usr/bin/env python

from mpl_toolkits.basemap import Basemap
from matplotlib import cm
import matplotlib.pyplot as plt
import datetime

class Plotter():
    def run(self):
        global m
        old_data = []
        m = Basemap(llcrnrlat = 45.507269, llcrnrlon = -122.691631, urcrnrlat = 45.532517, urcrnrlon = -122.663240, resolution='i', projection='merc') 
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/lines', 'lines')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/multilinestrings', 'multilinestrings')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/multipolygons', 'multipolygons')
        m.readshapefile('/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/maps/points', 'points')

	plt.ion()
	plt.show()
   
        while True:
	    to_plot = self.read_file()
	    self.plot_data(to_plot.split(" "))
	    to_plot = []
            plt.draw()
	    plt.pause(0.01)
            if not plt.get_fignums():
                break
        plt.show()

    def plot_data(self,data):
	time = data[0]        
	lat = data[1]
        lon = data[2]
	voc = data[3]
	humidity = data[4]
	temp = data[5]
        adjusted_temp = (float(temp) + 30.0) / 70.0
        m.plot(float(lon), float(lat), color=cm.plasma(adjusted_temp), marker='o', latlon=True) 

    def read_file_old(self, old):
        now = datetime.datetime.now()
        to_plot = []
	f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/' + now.strftime("%Y-%m-%d") + '.dat', 'r+')
        new = f.readlines()
        
	if(len(old) == 0):
            to_plot = new
        else:
	    old_line = old[len(old)-1].split(" ")
	    last_greater = None
            for i, line in reversed(list(enumerate(new))):
		line = line.split(" ")
	        if(line[0] > old_line[0]):
                    last_greater = i
                if(line[0] < old_line[0]):
		    if last_greater is not None:
		        to_plot = new[last_greater: len(new)-1]
		    break
	f.close()
        to_plot = new[len(new)-1]

	return to_plot, new

    def read_file(self):
	now = datetime.datetime.now()
	f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/' + now.strftime("%Y-%m-%d") + '.dat', 'r+')
        new = f.readlines()
        new = new[len(new)-1]
        f.close()
	return new

if __name__ == "__main__":
    plotter = Plotter()
    plotter.run()
	
