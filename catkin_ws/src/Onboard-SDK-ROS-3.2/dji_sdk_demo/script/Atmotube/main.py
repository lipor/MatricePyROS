#!/usr/bin/env python

import rospy
from dji_sdk.dji_drone import DJIDrone
from std_msgs.msg import String
import dji_sdk.msg
import time
import sys
import math
import numpy as np
import datetime
import threading
import atmotube_scanner
import gaussiantest

# A program for retrieving data from an Atmotube air quality sensor (through Bluetooth LE) and GPS data from a DJI Matrice 100 (with ROS), plotting it on a map, and performing a Gaussian Process Regression on the data. 
#main.py contains the code to retrieve the GPS data from the ROStopic with a subscriber, as well as write the assembled data to a file. It also spawns the threads that run the Atmotube and the plotter
#Make sure you read the README for further instructions on how to run this properly.

longitude = 0.0
latitude = 0.0


def callback(GPS):
    global longitude
    global latitude
    latitude = GPS.latitude
    longitude = GPS.longitude 

#Starts up the subscriber. Every time it gets new information in the GlobalPosition topic, it calls the callback. 
def listener():
    rospy.Subscriber('dji_sdk/global_position', dji_sdk.msg.GlobalPosition, callback)
    rospy.spin()

#Essentially just scans for Atmotube data and writes that to the file along with whatever the GPS coordinates are at the time. 
def get_data():
    global longitude
    global latitude
    while True:
        atmotube = atmotube_scanner.scan()
        if atmotube is not None:
	    write_to_file(latitude, longitude, atmotube[0], atmotube[1], atmotube[2])
        atmotube = None
    
#Self-explanatory, really. Just writes the data to the same file that it made at the beginning of the program. 
def write_to_file(latitude, longitude, voc, humidity, temp):
    now = datetime.datetime.now()
    #f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/' + now.strftime("%Y-%m-%d") + '.dat', 'ab+')
    f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/sample.dat', 'ab+')
    data = [[now.isoformat(), latitude, longitude, voc, humidity, temp]] 
    np.savetxt(f, data,fmt='%s')
    f.close()


if __name__ == "__main__":
    now = datetime.datetime.now()
    #The file that is written to is created here. Its name is just the date. If you want a different file for 
    #different times/sessions in the same day, you will have to change that.
    #The path to the file is also from root, because this file needs to be run with sudo (for reasons explained further in the README. Hint: It's the Atmotube.)

    #f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/' + now.strftime("%Y-%m-%d") + '.dat', 'a+')
    f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/sample.dat', 'a+')
    f.close()

    #Make the plotter thread
    plotter = gaussiantest.Plotter()
    plotter_thread=threading.Thread(target=plotter.run)
    plotter_thread.start()

    #Make the atmotube thread
    atmotube_thread=threading.Thread(target=get_data)
    atmotube_thread.daemon = True
    atmotube_thread.start()

    drone = DJIDrone()
    drone.request_sdk_permission_control()

    listener()


