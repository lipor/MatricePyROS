;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWpDownload)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWpDownload (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWPDOWNLOAD")
  (make-package "DJI_SDK::MISSIONWPDOWNLOAD"))
(unless (find-package "DJI_SDK::MISSIONWPDOWNLOADREQUEST")
  (make-package "DJI_SDK::MISSIONWPDOWNLOADREQUEST"))
(unless (find-package "DJI_SDK::MISSIONWPDOWNLOADRESPONSE")
  (make-package "DJI_SDK::MISSIONWPDOWNLOADRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionWpDownloadRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::MissionWpDownloadRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dji_sdk::MissionWpDownloadResponse
  :super ros::object
  :slots (_waypoint_task ))

(defmethod dji_sdk::MissionWpDownloadResponse
  (:init
   (&key
    ((:waypoint_task __waypoint_task) (instance dji_sdk::MissionWaypointTask :init))
    )
   (send-super :init)
   (setq _waypoint_task __waypoint_task)
   self)
  (:waypoint_task
   (&rest __waypoint_task)
   (if (keywordp (car __waypoint_task))
       (send* _waypoint_task __waypoint_task)
     (progn
       (if __waypoint_task (setq _waypoint_task (car __waypoint_task)))
       _waypoint_task)))
  (:serialization-length
   ()
   (+
    ;; dji_sdk/MissionWaypointTask _waypoint_task
    (send _waypoint_task :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_sdk/MissionWaypointTask _waypoint_task
       (send _waypoint_task :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_sdk/MissionWaypointTask _waypoint_task
     (send _waypoint_task :deserialize buf ptr-) (incf ptr- (send _waypoint_task :serialization-length))
   ;;
   self)
  )

(defclass dji_sdk::MissionWpDownload
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionWpDownload :md5sum-) "7c965e82a72d204e1e6d1e75389efb89")
(setf (get dji_sdk::MissionWpDownload :datatype-) "dji_sdk/MissionWpDownload")
(setf (get dji_sdk::MissionWpDownload :request) dji_sdk::MissionWpDownloadRequest)
(setf (get dji_sdk::MissionWpDownload :response) dji_sdk::MissionWpDownloadResponse)

(defmethod dji_sdk::MissionWpDownloadRequest
  (:response () (instance dji_sdk::MissionWpDownloadResponse :init)))

(setf (get dji_sdk::MissionWpDownloadRequest :md5sum-) "7c965e82a72d204e1e6d1e75389efb89")
(setf (get dji_sdk::MissionWpDownloadRequest :datatype-) "dji_sdk/MissionWpDownloadRequest")
(setf (get dji_sdk::MissionWpDownloadRequest :definition-)
      "---
MissionWaypointTask waypoint_task


================================================================================
MSG: dji_sdk/MissionWaypointTask
float32 velocity_range
float32 idle_velocity
uint8 action_on_finish
uint8 mission_exec_times
uint8 yaw_mode
uint8 trace_mode
uint8 action_on_rc_lost
uint8 gimbal_pitch_mode
MissionWaypoint[] mission_waypoint

================================================================================
MSG: dji_sdk/MissionWaypoint
float64 latitude
float64 longitude
float32 altitude
float32 damping_distance
int16 target_yaw
int16 target_gimbal_pitch
uint8 turn_mode
uint8 has_action
uint16 action_time_limit
MissionWaypointAction waypoint_action

================================================================================
MSG: dji_sdk/MissionWaypointAction
uint8 action_repeat
uint8[15] command_list
int16[15] command_parameter
")

(setf (get dji_sdk::MissionWpDownloadResponse :md5sum-) "7c965e82a72d204e1e6d1e75389efb89")
(setf (get dji_sdk::MissionWpDownloadResponse :datatype-) "dji_sdk/MissionWpDownloadResponse")
(setf (get dji_sdk::MissionWpDownloadResponse :definition-)
      "---
MissionWaypointTask waypoint_task


================================================================================
MSG: dji_sdk/MissionWaypointTask
float32 velocity_range
float32 idle_velocity
uint8 action_on_finish
uint8 mission_exec_times
uint8 yaw_mode
uint8 trace_mode
uint8 action_on_rc_lost
uint8 gimbal_pitch_mode
MissionWaypoint[] mission_waypoint

================================================================================
MSG: dji_sdk/MissionWaypoint
float64 latitude
float64 longitude
float32 altitude
float32 damping_distance
int16 target_yaw
int16 target_gimbal_pitch
uint8 turn_mode
uint8 has_action
uint16 action_time_limit
MissionWaypointAction waypoint_action

================================================================================
MSG: dji_sdk/MissionWaypointAction
uint8 action_repeat
uint8[15] command_list
int16[15] command_parameter
")



(provide :dji_sdk/MissionWpDownload "7c965e82a72d204e1e6d1e75389efb89")


