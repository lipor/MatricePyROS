;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWaypointTask)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWaypointTask (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWAYPOINTTASK")
  (make-package "DJI_SDK::MISSIONWAYPOINTTASK"))

(in-package "ROS")
;;//! \htmlinclude MissionWaypointTask.msg.html


(defclass dji_sdk::MissionWaypointTask
  :super ros::object
  :slots (_velocity_range _idle_velocity _action_on_finish _mission_exec_times _yaw_mode _trace_mode _action_on_rc_lost _gimbal_pitch_mode _mission_waypoint ))

(defmethod dji_sdk::MissionWaypointTask
  (:init
   (&key
    ((:velocity_range __velocity_range) 0.0)
    ((:idle_velocity __idle_velocity) 0.0)
    ((:action_on_finish __action_on_finish) 0)
    ((:mission_exec_times __mission_exec_times) 0)
    ((:yaw_mode __yaw_mode) 0)
    ((:trace_mode __trace_mode) 0)
    ((:action_on_rc_lost __action_on_rc_lost) 0)
    ((:gimbal_pitch_mode __gimbal_pitch_mode) 0)
    ((:mission_waypoint __mission_waypoint) (let (r) (dotimes (i 0) (push (instance dji_sdk::MissionWaypoint :init) r)) r))
    )
   (send-super :init)
   (setq _velocity_range (float __velocity_range))
   (setq _idle_velocity (float __idle_velocity))
   (setq _action_on_finish (round __action_on_finish))
   (setq _mission_exec_times (round __mission_exec_times))
   (setq _yaw_mode (round __yaw_mode))
   (setq _trace_mode (round __trace_mode))
   (setq _action_on_rc_lost (round __action_on_rc_lost))
   (setq _gimbal_pitch_mode (round __gimbal_pitch_mode))
   (setq _mission_waypoint __mission_waypoint)
   self)
  (:velocity_range
   (&optional __velocity_range)
   (if __velocity_range (setq _velocity_range __velocity_range)) _velocity_range)
  (:idle_velocity
   (&optional __idle_velocity)
   (if __idle_velocity (setq _idle_velocity __idle_velocity)) _idle_velocity)
  (:action_on_finish
   (&optional __action_on_finish)
   (if __action_on_finish (setq _action_on_finish __action_on_finish)) _action_on_finish)
  (:mission_exec_times
   (&optional __mission_exec_times)
   (if __mission_exec_times (setq _mission_exec_times __mission_exec_times)) _mission_exec_times)
  (:yaw_mode
   (&optional __yaw_mode)
   (if __yaw_mode (setq _yaw_mode __yaw_mode)) _yaw_mode)
  (:trace_mode
   (&optional __trace_mode)
   (if __trace_mode (setq _trace_mode __trace_mode)) _trace_mode)
  (:action_on_rc_lost
   (&optional __action_on_rc_lost)
   (if __action_on_rc_lost (setq _action_on_rc_lost __action_on_rc_lost)) _action_on_rc_lost)
  (:gimbal_pitch_mode
   (&optional __gimbal_pitch_mode)
   (if __gimbal_pitch_mode (setq _gimbal_pitch_mode __gimbal_pitch_mode)) _gimbal_pitch_mode)
  (:mission_waypoint
   (&rest __mission_waypoint)
   (if (keywordp (car __mission_waypoint))
       (send* _mission_waypoint __mission_waypoint)
     (progn
       (if __mission_waypoint (setq _mission_waypoint (car __mission_waypoint)))
       _mission_waypoint)))
  (:serialization-length
   ()
   (+
    ;; float32 _velocity_range
    4
    ;; float32 _idle_velocity
    4
    ;; uint8 _action_on_finish
    1
    ;; uint8 _mission_exec_times
    1
    ;; uint8 _yaw_mode
    1
    ;; uint8 _trace_mode
    1
    ;; uint8 _action_on_rc_lost
    1
    ;; uint8 _gimbal_pitch_mode
    1
    ;; dji_sdk/MissionWaypoint[] _mission_waypoint
    (apply #'+ (send-all _mission_waypoint :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocity_range
       (sys::poke _velocity_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _idle_velocity
       (sys::poke _idle_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _action_on_finish
       (write-byte _action_on_finish s)
     ;; uint8 _mission_exec_times
       (write-byte _mission_exec_times s)
     ;; uint8 _yaw_mode
       (write-byte _yaw_mode s)
     ;; uint8 _trace_mode
       (write-byte _trace_mode s)
     ;; uint8 _action_on_rc_lost
       (write-byte _action_on_rc_lost s)
     ;; uint8 _gimbal_pitch_mode
       (write-byte _gimbal_pitch_mode s)
     ;; dji_sdk/MissionWaypoint[] _mission_waypoint
     (write-long (length _mission_waypoint) s)
     (dolist (elem _mission_waypoint)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocity_range
     (setq _velocity_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _idle_velocity
     (setq _idle_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _action_on_finish
     (setq _action_on_finish (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mission_exec_times
     (setq _mission_exec_times (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _yaw_mode
     (setq _yaw_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _trace_mode
     (setq _trace_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _action_on_rc_lost
     (setq _action_on_rc_lost (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gimbal_pitch_mode
     (setq _gimbal_pitch_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dji_sdk/MissionWaypoint[] _mission_waypoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mission_waypoint (let (r) (dotimes (i n) (push (instance dji_sdk::MissionWaypoint :init) r)) r))
     (dolist (elem- _mission_waypoint)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dji_sdk::MissionWaypointTask :md5sum-) "a81a8c039337b422bde8ccc87d96c14b")
(setf (get dji_sdk::MissionWaypointTask :datatype-) "dji_sdk/MissionWaypointTask")
(setf (get dji_sdk::MissionWaypointTask :definition-)
      "float32 velocity_range
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



(provide :dji_sdk/MissionWaypointTask "a81a8c039337b422bde8ccc87d96c14b")


