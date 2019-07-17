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
import atmotube_scanner

latitude = 0.0
longitude = 0.0

def callback(GPS):
    global latitude, longitude
    latitude = GPS.latitude
    longitude = GPS.longitude
    g = raw_input("Asdf")
    write_to_file()
    

def listener():
    rospy.Subscriber('dji_sdk/global_position', dji_sdk.msg.GlobalPosition, callback)
    rospy.spin()

def write_to_file():
    now = datetime.datetime.now()
    f = open('catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/Atmotube/data/' + now.strftime("%Y-%m-%d") + '.dat', 'ab+')
    atmotube = atmotube_scanner.scan()
    data = [[now.isoformat(), latitude, longitude, atmotube[0], atmotube[1], atmotube[2]]]
    np.savetxt(f, data,fmt='%s')
    f.close()

if __name__ == '__main__':
    
    drone = DJIDrone()
    drone.request_sdk_permission_control()
    listener()

