#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np
import matplotlib.pyplot as plt
import scipy.io as io
from scipy.stats import truncnorm

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
        print(dd/float(N))
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
    return f, val



# In[2]:


def evaluate(policy, theta, Ts, Tt, epsilon):
# evaluate the learned policy for a fixed value of theta

    maxSamples = 1000   # for debugging purposes for now
    N = policy.shape[0] - 1
    Delta = 1/N
    ns = 0      # number of samples taken
    dist = 0    # distance traveled

    x = 0       # current location
    xh = 1      # opposite end of hypothesis space
    samples = []    # array of samples

    while np.abs(xh - x) > (2+0.00001)*epsilon and ns < maxSamples:
        # calculate next sample location and value
        xPrev = x
        x = policy[int(xPrev*N), int(xh*N)]
        y = int(x <= theta)
        samples.append([x,y])
        # update costs
        ns += 1
        dist += np.abs(xPrev - x)
        # update xh
        if x < xh:
            if y == 0:
                xh = xPrev
        else:
            if y == 1:
                xh = xPrev

    totalTime = Ts*ns + Tt*dist
    return totalTime, ns, dist, samples


# In[3]:


N = int(100)
epsilon = 1/float(N)

# ratios of Tt/Ts to loop over
Ts = 10
Tt = 100

# uniform prior
p = np.ones(N)/N

# learn optimal policy for this prior
fUnif, val = sps_nonuniform(Ts, Tt, p, N, epsilon)


# In[4]:


def get_truncated_normal(mean=0, sd=1, low=0, upp=10):
    return truncnorm((low - mean) / sd, (upp - mean) / sd, loc=mean, scale=sd)
tn = get_truncated_normal(mean=0.5, sd=0.1, low=0, upp=1)
p = tn.pdf(np.linspace(0,1,N))
p = p/np.sum(p)

# learn optimal policy for this prior
fNormal, val = sps_nonuniform(Ts, Tt, p, N, epsilon)


# In[5]:


data = {}
data['uniform'] = fUnif
data['normal'] = fNormal
io.savemat('nonUniformData',data)

# evaluate policy over all theta
thtRange = np.linspace(0,1,N)
times = np.zeros((N,2))
for tt, theta in enumerate(thtRange):
    unifTime, ns, dist, samples = evaluate(fUnif, theta, Ts, Tt, epsilon)
    normTime, ns, dist, samples = evaluate(fNormal, theta, Ts, Tt, epsilon)
    times[tt,0] = unifTime
    times[tt,1] = normTime

plt.plot(thtRange, times[:,0], label='uniform')
plt.plot(thtRange, times[:,1], label='non-uniform')
#plt.show()
plt.plot(thtRange, p, label='theoretical')
#plt.show()


# In[6]:


print(fUnif)


# In[ ]:




