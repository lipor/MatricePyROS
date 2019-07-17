# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dji_sdk_web_groundstation: 8 messages, 0 services")

set(MSG_I_FLAGS "-Idji_sdk_web_groundstation:/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg;-Idji_sdk_web_groundstation:/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Idji_sdk:/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg;-Idji_sdk:/home/nvidia/catkin_ws/devel/share/dji_sdk/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dji_sdk_web_groundstation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg" NAME_WE)
add_custom_target(_dji_sdk_web_groundstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk_web_groundstation" "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg" "dji_sdk/WaypointList:std_msgs/Header:dji_sdk_web_groundstation/WebWaypointReceiveActionGoal:dji_sdk_web_groundstation/WebWaypointReceiveActionFeedback:dji_sdk_web_groundstation/WebWaypointReceiveResult:dji_sdk_web_groundstation/WebWaypointReceiveActionResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:dji_sdk_web_groundstation/WebWaypointReceiveFeedback:dji_sdk_web_groundstation/WebWaypointReceiveGoal:dji_sdk/Waypoint"
)

get_filename_component(_filename "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg" NAME_WE)
add_custom_target(_dji_sdk_web_groundstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk_web_groundstation" "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg" ""
)

get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg" NAME_WE)
add_custom_target(_dji_sdk_web_groundstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk_web_groundstation" "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg" "actionlib_msgs/GoalID:dji_sdk/WaypointList:std_msgs/Header:dji_sdk/Waypoint:dji_sdk_web_groundstation/WebWaypointReceiveGoal"
)

get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg" NAME_WE)
add_custom_target(_dji_sdk_web_groundstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk_web_groundstation" "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg" "dji_sdk_web_groundstation/WebWaypointReceiveResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg" NAME_WE)
add_custom_target(_dji_sdk_web_groundstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk_web_groundstation" "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg" ""
)

get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg" NAME_WE)
add_custom_target(_dji_sdk_web_groundstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk_web_groundstation" "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg" "actionlib_msgs/GoalID:dji_sdk_web_groundstation/WebWaypointReceiveFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg" NAME_WE)
add_custom_target(_dji_sdk_web_groundstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk_web_groundstation" "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg" "dji_sdk/WaypointList:dji_sdk/Waypoint"
)

get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg" NAME_WE)
add_custom_target(_dji_sdk_web_groundstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_sdk_web_groundstation" "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_cpp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_cpp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_cpp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_cpp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_cpp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_cpp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_cpp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation
)

### Generating Services

### Generating Module File
_generate_module_cpp(dji_sdk_web_groundstation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dji_sdk_web_groundstation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dji_sdk_web_groundstation_generate_messages dji_sdk_web_groundstation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_sdk_web_groundstation_gencpp)
add_dependencies(dji_sdk_web_groundstation_gencpp dji_sdk_web_groundstation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_sdk_web_groundstation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_eus(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_eus(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_eus(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_eus(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_eus(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_eus(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_eus(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation
)

### Generating Services

### Generating Module File
_generate_module_eus(dji_sdk_web_groundstation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dji_sdk_web_groundstation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dji_sdk_web_groundstation_generate_messages dji_sdk_web_groundstation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_eus _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_eus _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_eus _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_eus _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_eus _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_eus _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_eus _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_eus _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_sdk_web_groundstation_geneus)
add_dependencies(dji_sdk_web_groundstation_geneus dji_sdk_web_groundstation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_sdk_web_groundstation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_lisp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_lisp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_lisp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_lisp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_lisp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_lisp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_lisp(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation
)

### Generating Services

### Generating Module File
_generate_module_lisp(dji_sdk_web_groundstation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dji_sdk_web_groundstation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dji_sdk_web_groundstation_generate_messages dji_sdk_web_groundstation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_sdk_web_groundstation_genlisp)
add_dependencies(dji_sdk_web_groundstation_genlisp dji_sdk_web_groundstation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_sdk_web_groundstation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_nodejs(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_nodejs(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_nodejs(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_nodejs(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_nodejs(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_nodejs(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_nodejs(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation
)

### Generating Services

### Generating Module File
_generate_module_nodejs(dji_sdk_web_groundstation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dji_sdk_web_groundstation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dji_sdk_web_groundstation_generate_messages dji_sdk_web_groundstation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_sdk_web_groundstation_gennodejs)
add_dependencies(dji_sdk_web_groundstation_gennodejs dji_sdk_web_groundstation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_sdk_web_groundstation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_py(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_py(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_py(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_py(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_py(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg;/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_py(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/WaypointList.msg;/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation
)
_generate_msg_py(dji_sdk_web_groundstation
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation
)

### Generating Services

### Generating Module File
_generate_module_py(dji_sdk_web_groundstation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dji_sdk_web_groundstation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dji_sdk_web_groundstation_generate_messages dji_sdk_web_groundstation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveAction.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_py _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/Onboard-SDK-ROS-3.2/dji_sdk_web_groundstation/msg/MapNavSrvCmd.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_py _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionGoal.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_py _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionResult.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_py _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_py _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveActionFeedback.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_py _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveGoal.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_py _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/devel/share/dji_sdk_web_groundstation/msg/WebWaypointReceiveResult.msg" NAME_WE)
add_dependencies(dji_sdk_web_groundstation_generate_messages_py _dji_sdk_web_groundstation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_sdk_web_groundstation_genpy)
add_dependencies(dji_sdk_web_groundstation_genpy dji_sdk_web_groundstation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_sdk_web_groundstation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_sdk_web_groundstation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET dji_sdk_generate_messages_cpp)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_cpp dji_sdk_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dji_sdk_web_groundstation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET dji_sdk_generate_messages_eus)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_eus dji_sdk_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_sdk_web_groundstation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET dji_sdk_generate_messages_lisp)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_lisp dji_sdk_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dji_sdk_web_groundstation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET dji_sdk_generate_messages_nodejs)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_nodejs dji_sdk_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_sdk_web_groundstation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET dji_sdk_generate_messages_py)
  add_dependencies(dji_sdk_web_groundstation_generate_messages_py dji_sdk_generate_messages_py)
endif()
