#!/usr/bin/env python


import rospy
from dji_sdk.dji_drone import DJIDrone
from std_msgs.msg import String
import dji_sdk.msg
import time
import sys
import math

latitude = 0.0
longitude = 0.0

def callback(GPS):
    global latitude, longitude
    latitude = GPS.latitude
    longitude = GPS.longitude
    print(latitude)

def listener():
    rospy.Subscriber('dji_sdk/global_position', dji_sdk.msg.GlobalPosition, callback)
    rospy.spin()

if __name__ == '__main__':
    
    drone = DJIDrone()
    drone.request_sdk_permission_control()
    listener()
