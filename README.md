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
    
    
