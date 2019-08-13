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

longitude = 0.0
latitude = 0.0

def callback(GPS):
    global longitude
    global latitude
    latitude = GPS.latitude
    longitude = GPS.longitude 

def listener():
    rospy.Subscriber('dji_sdk/global_position', dji_sdk.msg.GlobalPosition, callback)
    rospy.spin()


def get_data():
    global longitude
    global latitude
    while True:
        atmotube = atmotube_scanner.scan()
        if atmotube is not None:
	    write_to_file(latitude, longitude, atmotube[0], atmotube[1], atmotube[2])
        atmotube = None
    
def write_to_file(latitude, longitude, voc, humidity, temp):
    now = datetime.datetime.now()
    #f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/' + now.strftime("%Y-%m-%d") + '.dat', 'ab+')
    f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/2019-07-25aaaa.dat', 'ab+')
    data = [[now.isoformat(), latitude, longitude, voc, humidity, temp]] 
    np.savetxt(f, data,fmt='%s')
    f.close()


if __name__ == "__main__":
    now = datetime.datetime.now()
    #f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/' + now.strftime("%Y-%m-%d") + '.dat', 'a+')
    f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/2019-07-25aaaa.dat', 'a+')
    f.close()
    plotter = gaussiantest.Plotter()
    plotter_thread=threading.Thread(target=plotter.run)
    plotter_thread.start()

    atmotube_thread=threading.Thread(target=get_data)
    atmotube_thread.daemon = True
    atmotube_thread.start()

    drone = DJIDrone()
    drone.request_sdk_permission_control()

    listener()


