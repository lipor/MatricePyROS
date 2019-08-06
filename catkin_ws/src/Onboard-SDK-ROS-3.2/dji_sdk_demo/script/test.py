#!/usr/bin/env python

# ADD THIS WHOLE PART OF THE CODE TO THE ALGORITHM YOU WANT TO TRY AND CHANGE YOUR PARAMETERS LIKE START POSTION, END POSITION, SCALE, TERMINAL STATE LENGTH, HEIGHT ETC


###
from mpl_toolkits.basemap import Basemap
import numpy as np
import matplotlib.pyplot as plt
import rospy
from dji_sdk.dji_drone import DJIDrone
from std_msgs.msg import String
import dji_sdk.msg
import time
import sys
import math
from queue import Queue
import threading

start = 0.0              
end = 1.0             #taking the hypothesis length to be 1
scale = 50            #Scaling the hypothesis to be length of 1  
terminal_state_length = 0.02            # Terminal state length is fixed for the time being 
current_pos = 0.0
current_setpoint = 0.0		
height = 10.0
theta = 0.65           
dist_thresh = 0.35   
time_thresh = 5.0
count1 = 0
#drone will begin taking measurements when within dist_thresh meters of the setpoint for time_thresh seconds

############################################

#Write your code here for the algorithm and make it return just policy for each of the state

def sps_nonuniform(Ts, Tt, p, N, epsilon):
    N = int(N)
    Delta = (1/float(N))
    # states are tuples (x,xh) where x is the current location and xh is 
    # the opposite end of the hypothesis space
    f = np.zeros((N+1,N+1))
    val = np.zeros((N+1,N+1))

    # loop over possible lengths of hypothesis space
    # dd = |x - xh|
    for dd in range(N+1):
        #print(dd/float(N))
        # loop over possible current locations
        for xx in range(N):
            # calculate possible values of xh
            xhList = []
            if xx - dd >= 0:
                xhList.append(xx-dd)
            if xx + dd <= N:
                xhList.append(xx+dd)

            # now compute value of each state
            if dd/float(N) <= epsilon:
                for xh in xhList:
                    val[xx,xh] = 0
            else:
                for xh in xhList:
                    # look at all possible actions from this state
                    # actions are distances to travel
                    minVal = np.inf
                    bestAction = 0
                    for aa in range(1,dd):
                        # Pst is the probability theta lies between xx and xx +/- aa
                        if xx <= xh:
                            # move forward
                            direction = 1
                            Pst = np.sum(p[xx:xx+aa])/float(np.sum(p[xx:xh]))
                        else:
                            # move backward
                            direction = -1
                            Pst = np.sum(p[xx-aa:xx])/float(np.sum(p[xh:xx])) 
                        # Pstc is the complement (theta between xx +/- aa and xh)
                        Pstc = 1 - Pst
                        tempVal = Ts + Tt*aa/float(N) + Pst*val[xx+direction*aa,xx] + Pstc*val[xx+direction*aa,xh]
                        if tempVal < minVal:
                            bestAction = (xx + direction*aa)/float(N)
                            minVal = tempVal
                        
                        f[xx,xh] = bestAction
                        val[xx,xh] = minVal

    fout = [fs/float(N) for fs in f]
    return f

# calling out the function sps and storing the policies in a gloabl variable which can be accessed by different functions 
N = int(100)
epsilon = 1/float(N)
# ratios of Tt/Ts to loop over
Ts = 10
Tt = 100

# uniform prior
p = np.ones(N)/N
policy = sps_nonuniform(Ts, Tt, p, N, epsilon)
print(policy)

def Evaluate(start_point , end_point):
    global scale, terminal_state_length, policy,N
    action = policy[int(N*start_point) , int(N*end_point)]
    action= round(action,2)
    #print("action taken is %f" %action)
    print("state size is %f"%(end_point - start_point))
    if (abs(end_point - start_point) >= (terminal_state_length)):
	new_start = action
	return (new_start)                     # return new_start point for the Drone
    else: 
  	new_start = -5 
	return (new_start)                     # return Negative value if terminal state size is reached 	

#For plotting the graph. Runs in a separate thread
def plot(my_queue):
    plt.show(block=False)

    fig, ax = plt.subplots()
    ax.set_ylim(-0.5,1.5)
    ax.set_xlim(0,1)

    ax.plot((0, theta), (1,1), 'k-')
    ax.plot((theta, 1), (0,0), 'k-')
    ax.plot((theta, theta), (0,1), 'k-')
    while True:
	data = my_queue.get()
	print data
        x = data[0]
	y = data[1]
	is_update = data[2]
        if not is_update:
            ax.plot(x, y, 'ro')
        plt.draw()
        plt.pause(0.5)
        my_queue.task_done()

# ROS subscriber for the feedback values. Topic "dji_sdk/local_position"
def listener():
    rospy.Subscriber('dji_sdk/local_position', dji_sdk.msg.LocalPosition, callback)
    rospy.spin()

# This callback function is called every time feedback is received or the ROS topic is published
def callback(local_position):     
    global current_pos, scale   
    global height, theta, start, end  
    global current_setpoint
    global count1
                
    rospy.loginfo(rospy.get_caller_id() + 'Current position is %f', float(local_position.x))

    current_pos=local_position.x	
    current_pos=round(current_pos,2)           

    print("start and end pos are %f,%f"%(start,end))
    new_setpoint = Evaluate (start,end)           # calculates the new setpoint
    print("new position recevied from Evaluate is %f"%new_setpoint)

    if (new_setpoint < 0 ):						# if new setpoint is negative, it means we are in terminal state and need to return back to home 
	drone.local_position_navigation_send_request(0, 0, 10)
	if (abs(local_position.x) < 0.05 and abs(local_position.y) < 0.05):
	    drone.gohome()
    else:
	if (new_setpoint is not current_setpoint):
	################################################################################################################
	    print new_setpoint, current_setpoint
	    print("New setpoint: %f"%(scale*new_setpoint))

	    drone.local_position_navigation_send_request((scale*new_setpoint),0,height)   	# Otherwise send drone to the new position for Sampling 
   	    start_time = time.time()
	else:
	    queue.put([0,0,True], True, 1)
	
        current_setpoint = new_setpoint
        #This loops make sure that the drone reaches the dist_thresh and stays there for time_thresh seconds 
	# need to add the sampling code here, Right Now faking it

	if (count1 > 100000): #To update the graph so it doesn't "time out"
	    queue.put([0,0,True])
	    count1 = 0
	count1 = count1 +1

	count2 = 0
	while(True):
	    if (abs( current_pos - (scale*current_setpoint)) > 0.35):            
		break
	    else:        
		current_time = time.time()
		print current_time - start_time

		if (count2 > 100000): #To update the graph so it doesn't "time out"
		    queue.put([0,0,True])
		    count2 = 0
		count2 = count2 +1


	        if (abs(current_time - start_time) > 5.0):
		# Do the Sampling here     
		    if (end > start):
			print "a"
		        if (current_setpoint > theta):
                            queue.put([current_setpoint, 0, False])
			    end = start
			    start = current_setpoint
			    break
		        else :
                            queue.put([current_setpoint, 1, False])
			    start = current_setpoint
			    break
		    else : 
			print "b"
		        if (current_setpoint < theta):
                            queue.put([current_setpoint, 1, False])
			    end = start
			    start = current_setpoint
			    break
		        else:
                            queue.put([current_setpoint, 0, False])
			    start = current_setpoint	
			    break


if __name__ == '__main__':

    drone = DJIDrone()
    drone.request_sdk_permission_control()
    drone.arm_drone()   
    queue = Queue()
    #start plotter thread running in the background
    plotter_thread = threading.Thread(target=plot, args=(queue,))
    plotter_thread.daemon = True
    plotter_thread.start()
    print "electric"
    queue.put([1,1,False])
    print "boogaloo"
    listener()
