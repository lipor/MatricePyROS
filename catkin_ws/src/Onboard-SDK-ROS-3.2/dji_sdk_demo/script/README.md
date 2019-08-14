##This is the README for the Atmotube project!

This project has three main files: main.py, atmotube_scanner.py, and gaussiantest.py.

#main.py 

Takes care of spawning the threads for the atmotube and plotter processes. It also interfaces with the drone's ROStopic and gets the GPS data. The Atmotube thread then plots this GPS data along with the Atmotube data (which is grabbed from atmotube_scanner.py) whenever a new air quailty reading comes in. 

#atmotube_scanner.py 

Contains some low-level code to scan for the Atmotube. Once it gets a reading from the Atmotube (note that these readings do not come at a steady rate. There's usually 3-5 readings in batches every minute or so), it parses the packet and returns the VOC, temperature, and humididty readings.

#gaussiantest.py 

Reads data from the file as main.py writes to it, and updates the plot and a gaussian process regression plot every time a new datapoint comes in. These datapoints contain date/time the data was taken, lat, lon, voc, humidity, and temperature at the point. 

**To run this beautiful, beautiful program, there's a lot of stuff that you have to do.**

#On the hardware side:

1. Turn on the DJI Matrice 100, the DJI's controller, and the phone. Make sure that the phone is connected to the controller via USB (and is running the DJI GO app), and the drone is connected to the computer via the TX, RX, and GND cables. We are running on a Nvidia Jetson, which has little pins built right into it. Make sure that the drone is connected to the controller (which you can tell by there being a little green light. The phone will also say that it's connected.) Our controller is also in F mode. 
2. With a USB, plug the drone into whatever computer is running the simulator. Start the simulator up and make sure you are actually simulating everything (there will be a tan readout of many different values on the simulator screen). You should be able to fly the drone around with the controller at this point if you want. Note that sometimes, you have to close the simulator and re-open it if the screen sleeps or something. That usually fixes any problems.
3. Make sure that the Atmotube is actually on and has charge. It doesn't need to be connected to anything. Just in the vicinity.

#On the software side:

1. Open a terminal. You're going to have to run everything from root because of the Bluetooth Atmotube scanner (which is way too low-level for me), so pop a `sudo su` in there.
2. Source it: `source catkin_ws/devel/setup.bash`
3. Set up the manifold: `roslaunch catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/launch/sdk_manifold.launch`
4. Open up a new terminal. Do a `sudo su` and a `source catkin_ws/devel/setup.bash` 
5. To run the program, do `rosrun dji_sdk_demo main.py`

Bada bing bada boom. That was certainly tedious. 

Once you run it, You should basically be able to fly around with the drone. The map will update with the data points as they come in, and it will look very cool. 
