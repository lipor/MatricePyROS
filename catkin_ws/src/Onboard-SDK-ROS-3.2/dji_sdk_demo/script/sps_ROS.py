#!/usr/bin/env python


# Import all the libraries here

import numpy as np
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Float64


action = 0.0
N = int(100)
epsilon = 1/float(N)
policy= np.zeros((N+1,N+1))
pub = rospy.Publisher('/Action_value', Float64, queue_size = 10)

# Add your Sampling Algorithm here which returns a policy from state x to xh

def sps_nonuniform(Ts, Tt, p, N, epsilon):

    N = int(N)
    Delta = (1/float(N))
    print(Delta)
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

# ROS publishers and subscribers are added after this Comment

def callback(msg):
    rospy.loginfo("Received an Action request message!")
    rospy.loginfo("Start and end points of state are: [%f, %f]"%(msg.linear.x, msg.linear.y))
    global policy, action
    start= msg.linear.x
    end= msg.linear.y
    start= round(start, 2)
    end = round(end, 2)    
    global N
    action = policy[int(N*start), int(N*end)]
    print("publsihing action values")
    pub.publish(action)

def listener():
    global action
    rospy.init_node('Sps_Node_ROS')
    rospy.Subscriber("/Action_request", Twist, callback)
    pub.publish(action)
    rospy.spin()

if __name__ == '__main__':
    global policy
    N = int(100)
    epsilon = 1/float(N)

# ratios of Tt/Ts to loop over
    Ts = 10
    Tt = 100

# uniform prior
    p = np.ones(N)/N
    
    policy = sps_nonuniform(Ts, Tt, p, N, epsilon)
    print(policy)
    listener()



