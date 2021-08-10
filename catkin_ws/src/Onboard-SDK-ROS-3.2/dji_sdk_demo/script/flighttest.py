#!/usr/bin/env python

from dji_sdk.dji_drone import DJIDrone
import dji_sdk.msg
import time
import sys
import math
import os

def main():
	#test to have the drone fly in a square and land, for purposes of testing automatic flight.
	drone = DJIDrone()
	print("control requesting")
	drone.request_sdk_permission_control() #request control
	print("control requested")
	while True:
		#os.system("cat /sys/class/gpio/gpio298/value")
		#button = os.popen("cat /sys/class/gpio/gpio298/value").read() #button input
		#print(int(button))
		#if(int(button) == 0):
			drone.takeoff() #takeoff
			time.sleep(5)

			#fly in a square
			print("one")
			for i in range(60):
				drone.attitude_control(DJIDrone.HORIZ_POS|DJIDrone.VERT_VEL|DJIDrone.YAW_ANG|DJIDrone.HORIZ_BODY|DJIDrone.STABLE_ON, 3, 3, 0, 0)
				time.sleep(0.02)
			print("two")
			for i in range(60):
				drone.attitude_control(DJIDrone.HORIZ_POS|DJIDrone.VERT_VEL|DJIDrone.YAW_ANG|DJIDrone.HORIZ_BODY|DJIDrone.STABLE_ON, -3, 3, 0, 0)
				time.sleep(0.02)
			print("three")
			for i in range(60):
				drone.attitude_control(DJIDrone.HORIZ_POS|DJIDrone.VERT_VEL|DJIDrone.YAW_ANG|DJIDrone.HORIZ_BODY|DJIDrone.STABLE_ON, -3, -3, 0, 0)
				time.sleep(0.02)
			print("four")
			for i in range(60):
				drone.attitude_control(DJIDrone.HORIZ_POS|DJIDrone.VERT_VEL|DJIDrone.YAW_ANG|DJIDrone.HORIZ_BODY|DJIDrone.STABLE_ON, 3, -3, 0, 0)
				time.sleep(0.02)


			time.sleep(5)
			drone.gohome() #land
			break


if __name__ == "__main__":
    main()
