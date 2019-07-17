# Install script for directory: /home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk_web_groundstation/msg" TYPE FILE FILES "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk_web_groundstation/action" TYPE FILE FILES "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/action/WebWaypointReceive.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk_web_groundstation/msg" TYPE FILE FILES
    "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg"
    "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk_web_groundstation/cmake" TYPE FILE FILES "/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/catkin_generated/installspace/dji_sdk_web_groundstation-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/include/dji_sdk_web_groundstation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/share/roseus/ros/dji_sdk_web_groundstation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/share/common-lisp/ros/dji_sdk_web_groundstation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/share/gennodejs/ros/dji_sdk_web_groundstation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/nvidia/catkin_ws/devel/lib/python2.7/dist-packages/dji_sdk_web_groundstation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/lib/python2.7/dist-packages/dji_sdk_web_groundstation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/catkin_generated/installspace/dji_sdk_web_groundstation.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk_web_groundstation/cmake" TYPE FILE FILES "/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/catkin_generated/installspace/dji_sdk_web_groundstation-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk_web_groundstation/cmake" TYPE FILE FILES
    "/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/catkin_generated/installspace/dji_sdk_web_groundstationConfig.cmake"
    "/home/nvidia/catkin_ws/build/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/catkin_generated/installspace/dji_sdk_web_groundstationConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk_web_groundstation" TYPE FILE FILES "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk_web_groundstation/dji_sdk_web_client" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk_web_groundstation/dji_sdk_web_client")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk_web_groundstation/dji_sdk_web_client"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/dji_sdk_web_groundstation" TYPE EXECUTABLE FILES "/home/nvidia/catkin_ws/devel/lib/dji_sdk_web_groundstation/dji_sdk_web_client")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk_web_groundstation/dji_sdk_web_client" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk_web_groundstation/dji_sdk_web_client")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk_web_groundstation/dji_sdk_web_client"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk_web_groundstation/dji_sdk_web_client")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk_web_groundstation/launch" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/launch")
endif()

