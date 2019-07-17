#!/usr/bin/env python


import rospy
from dji_sdk.dji_drone import DJIDrone
from std_msgs.msg import String
import dji_sdk.msg
import time
import sys
import math

current_pos=0.0
L=0.0
R=100.0
theta=20.0
Height=10.0
SetPoint=0.0


def callback(local_position):
    rospy.loginfo(rospy.get_caller_id() + 'I heard %f', float(local_position.x))
    global current_pos
    current_pos=local_position.x
    current_pos=round(current_pos,1)
    #print("Current_pos")
    #print(current_pos)
    global SetPoint
    global Height


    start_time = time.time()
    while(abs(current_pos - SetPoint) < 0.2 ):
	current_time = time.time()
	if (current_time - start_time > 7.5):
	    SetPoint = BinarySearch(current_pos)
	    print("Setpoint: %f" %SetPoint)
	    drone.local_position_navigation_send_request(SetPoint,0,Height)
	
    drone.local_position_navigation_send_request(SetPoint, 0, Height)
def listener():

    rospy.Subscriber('dji_sdk/local_position', dji_sdk.msg.LocalPosition, callback)
    rospy.spin()

def BinarySearch(pos):
    global L,R, current_pos, SetPoint

    if(pos==theta):
	while(abs(current_pos) > 0.5):
	    print('current pos :%f'%current_pos)
	    drone.local_position_navigation_send_request(0,0,Height)
	    drone.gohome()
	return 0
    elif(pos>theta):
	R=SetPoint
	return (L+R)/2
    elif(pos<theta):
	L=SetPoint
	return (L+R)/2

if __name__ == '__main__':
    global SetPoint
    SetPoint=BinarySearch(current_pos)
    #SetPoint=25.0
    global Height
    print(SetPoint)
    drone = DJIDrone()
    drone.request_sdk_permission_control()
    drone.arm_drone() 
    drone.local_position_navigation_send_request(SetPoint,0,Height)   
    listener()
