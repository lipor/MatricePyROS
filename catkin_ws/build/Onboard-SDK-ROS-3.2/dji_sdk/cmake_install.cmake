# Install script for directory: /home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nvidia/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/A3GPS.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/A3RTK.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Acceleration.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/AttitudeQuaternion.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Compass.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/FlightControlInfo.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Gimbal.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/GlobalPosition.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/LocalPosition.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/PowerStatus.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/RCChannels.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Velocity.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/TransparentTransmissionData.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/TimeStamp.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionPushInfo.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionWaypointAction.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionWaypoint.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionWaypointTask.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionHotpointTask.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionFollowmeTask.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionFollowmeTarget.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionStatusWaypoint.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionStatusHotpoint.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionStatusFollowme.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionStatusOther.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionEventWpUpload.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionEventWpAction.msg"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/MissionEventWpReach.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/srv" TYPE FILE FILES
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/Activation.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/AttitudeControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/CameraActionControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/DroneTaskControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/GimbalAngleControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/GimbalSpeedControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/GlobalPositionControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/LocalPositionControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/SDKPermissionControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/SendDataToRemoteDevice.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/VelocityControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/VersionCheck.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/DroneArmControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/SyncFlagControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MessageFrequencyControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/VirtualRCEnableControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/VirtualRCDataControl.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionStart.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionPause.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionCancel.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionWpUpload.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionWpSetSpeed.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionWpGetSpeed.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionWpDownload.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionHpUpload.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionHpDownload.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionHpSetSpeed.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionHpSetRadius.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionHpResetYaw.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionFmUpload.srv"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/srv/MissionFmSetTarget.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/action" TYPE FILE FILES
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/action/GlobalPositionNavigation.action"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/action/LocalPositionNavigation.action"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/action/WaypointNavigation.action"
    "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/action/DroneTask.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/WaypointNavigationAction.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/WaypointNavigationResult.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/DroneTaskAction.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/DroneTaskActionResult.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/DroneTaskResult.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk/msg/DroneTaskFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/cmake" TYPE FILE FILES "/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk/catkin_generated/installspace/dji_sdk-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/include/dji_sdk")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/share/roseus/ros/dji_sdk")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/share/common-lisp/ros/dji_sdk")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/share/gennodejs/ros/dji_sdk")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/nvidia/catkin_ws/devel/lib/python2.7/dist-packages/dji_sdk")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/lib/python2.7/dist-packages/dji_sdk" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/lib/python2.7/dist-packages/dji_sdk" FILES_MATCHING REGEX "/home/nvidia/catkin_ws/devel/lib/python2.7/dist-packages/dji_sdk/.+/__init__.pyc?$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk/catkin_generated/installspace/dji_sdk.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/cmake" TYPE FILE FILES "/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk/catkin_generated/installspace/dji_sdk-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/cmake" TYPE FILE FILES
    "/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk/catkin_generated/installspace/dji_sdkConfig.cmake"
    "/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk/catkin_generated/installspace/dji_sdkConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk" TYPE FILE FILES "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dji_sdk" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/include/dji_sdk/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/dji_sdk" TYPE EXECUTABLE FILES "/home/nvidia/catkin_ws/devel/lib/dji_sdk/dji_sdk_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/launch" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/launch")
endif()

