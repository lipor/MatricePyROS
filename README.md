# MatricePyROS

Versions Supported by Matrice 100

    Linux version used: Ubuntu 16.04
    ROS version used: ROS Kinetic


Matrice 100 Recommended: 

    • Firmware Package Version: 1.3.1.0
    • Flight Controller Version: 3.1.10.0
    • OSDK Version : OSDK 3.3.1 (However we are using the 3.2 version which is described later in this same Readme file) 


Firmware Update of Zenmuse :

    • For the update of Firmware version of the Zenmuse (Gimbal), follow this website: https://www.dji.com/matrice100/info
    • Follow the instructions provided there if want to update the Firmware version.
    • However, we already have one inside the Matrice 100 and dont need to update it.


DJI Onboard-SDK Files

    • We are using the Onboard SDK version 3.2 instead of using the 3.3.1.
    • It can be downloaded from https://github.com/dji-sdk/Onboard-SDK/tree/3.2
    • Clone it in the home workspace of your Linux machiine which is being used on the Matrice 100 and its done. 
    
    
Installing ROS 

    • Follow the instructions on this page for the installation of the ROS in the computer: http://wiki.ros.org/kinetic/Installation/Ubuntu
    • Make sure you do the "Desktop-Full Install" Version which is recommended.
    • Also make sure you source your environment before you start working with the workspace. 
    • It is always a good practise to add this line to your bashrc file : source /opt/ros/kinetic/setup.bash
        To do this, open a terminal and type gedit ~/.bashrc and add the above line at the last of your bashrc file which open up.  
    • To Learn more about ROS, follow the ROS tutorials from here : http://wiki.ros.org/ROS/Tutorials
    
Setting up the workspace for the Drone
    
    • For the workspace, clone the catkin_ws folder from the Github repo into your home folder of Linux machine.
    • Open up the terminal, navigate to the catkin_ws and do "catkin_make" command to make the files inside the workspace.

    The Original version of the catkin_ws files can be found here : https://github.com/dji-sdk/Onboard-SDK-ROS/tree/3.2
    But it does not include the python files required for the navigation of the Drone using the ROS. It just have files to control the drone via keyboard.
    For controlling the Drone, it is recommended to use the catkin_ws in the MatricePyROS Repo.
    
Running up the Drone

     Open up the terminal and follow the following commands:
         • cd catkin_ws
         • source devel/setup.bash
         • roslaunch dji_sdk sdk_manifold.launch
     
     Open up another Terminal and follow the following commands:
         • cd catkin_ws
         • source devel/setup.bash
         • rosrun dji_sdk_demo test.py 
      
      ******* This last command can be modified depending upon which python file you want to run, for e.g. if you want to use the keyboard specified tasks which are pre built, use client.py file instead of test.py 
 
 Understanding the Code and making changes to it

         • All the codes for the drone commands are under the folder scripts in dji_sdk_demo folder. 
         • Read the comments made in the files for making changes accordingly.
    
 
 There is also a side-project for taking data from an Atmotube air quality sensor, pairing that with GPS data from the drone, plotting that over a Matplotlib Basemap of the area, and doing a Gaussian Process Regression on the data. That can be found in catkin_ws/src/Onboard -SDK-ROS-3.2/dji_sdk_demo/script/Atmotube. Instructions more applicable to that project are detailed in the README in that file. 

# Pairing the Jetson TX2 with an Orbitty Carrier
In order for the drone to not be tethered to the earth, the computer it is operating with needs a portable source of power. An Orbitty carrier board was also added, as opposed to using the TX2's normal development board for the sake of compactness. 

Note: Don't connect or disconnect any cables on the TX2/Orbitty while it's powered up. A lot of the ports are rather delicate and easily brickable.

Instructions for flashing the TX2 for use with the Orbitty can be found here:
https://connecttech.com/flashing-nvidia-jetson-tx2-tx1-module/
Note: this will essentially hard reset your TX2, so if you plan on using it with the orbitty, make sure you back up your files to add them back later. 

This link is the manual for the Orbitty, and contains pinout specifications if you want to add any external buttons or other pieces to the carrier.
https://connecttech.com/ftp/pdf/CTIM-ASG003_Manual.pdf
Connect the orange RX wire from the drone to pin 5, UART1TX of the orbitty. Connect the yellow TX wire to pin 6, UART1RX. UART1 pins were easier to get working than the UART0 in my experience.

From here, if there are no hiccups, you should be able to plug in a monitor, keyboard, and mouse to begin coding. For this system, a 3 cell 11.1V LiPo Battery works well to power the computer if you make sure to keep it charged every time after you use it. 

A simple autonomous test program, for example, MatricePyROS/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/script/flighttest.py , can now be run at boot so that when the computer is turned on, the program will run and the drone will fly. This program can be replaced with any other depending on the specifics of what you want to use the drone for.

This was done using systemd services- https://www.shubhamdipt.com/blog/how-to-create-a-systemd-service-in-linux/
I used two services so that the ROSCORE could start, as that is necessary for the drone to communicate with the program. 

##### dronestart.service- this launches ROS
```
[Unit]
Description=Launch ROS for DJI drone
After=remote-fs.target
After=syslog.target
[Service]
ExecStartPre=/bin/sleep 15
ExecStart=/bin/bash /home/nvidia/MatricePyROS/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/dronestart.sh
Restart=on-abort
[Install]
WantedBy=multi-user.target                               
```
##### dronestart2.service- this launches the test code
```
[Unit]
Description=launch test code for DJI
[Service]
ExecStartPre=/bin/sleep 30
ExecStart=/bin/bash /home/nvidia/MatricePyROS/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_demo/dronestart2.sh
Restart=on-abort
[Install]
WantedBy=multi-user.target
```
The files dronestart.sh and dronestart2.sh can be found in the dji_sdk_demo folder. 

From here, the drone should run this program at boot and fly in a square. After that point, you can use any program you desire with the drone. 
