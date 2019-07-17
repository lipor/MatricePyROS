;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWpUpload)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWpUpload (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWPUPLOAD")
  (make-package "DJI_SDK::MISSIONWPUPLOAD"))
(unless (find-package "DJI_SDK::MISSIONWPUPLOADREQUEST")
  (make-package "DJI_SDK::MISSIONWPUPLOADREQUEST"))
(unless (find-package "DJI_SDK::MISSIONWPUPLOADRESPONSE")
  (make-package "DJI_SDK::MISSIONWPUPLOADRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionWpUploadRequest
  :super ros::object
  :slots (_waypoint_task ))

(defmethod dji_sdk::MissionWpUploadRequest
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

(defclass dji_sdk::MissionWpUploadResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionWpUploadResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::MissionWpUpload
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionWpUpload :md5sum-) "ce0a38f3621e16d1b7a2d33b72384b5d")
(setf (get dji_sdk::MissionWpUpload :datatype-) "dji_sdk/MissionWpUpload")
(setf (get dji_sdk::MissionWpUpload :request) dji_sdk::MissionWpUploadRequest)
(setf (get dji_sdk::MissionWpUpload :response) dji_sdk::MissionWpUploadResponse)

(defmethod dji_sdk::MissionWpUploadRequest
  (:response () (instance dji_sdk::MissionWpUploadResponse :init)))

(setf (get dji_sdk::MissionWpUploadRequest :md5sum-) "ce0a38f3621e16d1b7a2d33b72384b5d")
(setf (get dji_sdk::MissionWpUploadRequest :datatype-) "dji_sdk/MissionWpUploadRequest")
(setf (get dji_sdk::MissionWpUploadRequest :definition-)
      "MissionWaypointTask waypoint_task

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
---
bool result

")

(setf (get dji_sdk::MissionWpUploadResponse :md5sum-) "ce0a38f3621e16d1b7a2d33b72384b5d")
(setf (get dji_sdk::MissionWpUploadResponse :datatype-) "dji_sdk/MissionWpUploadResponse")
(setf (get dji_sdk::MissionWpUploadResponse :definition-)
      "MissionWaypointTask waypoint_task

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
---
bool result

")



(provide :dji_sdk/MissionWpUpload "ce0a38f3621e16d1b7a2d33b72384b5d")


