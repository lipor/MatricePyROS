;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionStatusWaypoint)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionStatusWaypoint (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONSTATUSWAYPOINT")
  (make-package "DJI_SDK::MISSIONSTATUSWAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude MissionStatusWaypoint.msg.html


(defclass dji_sdk::MissionStatusWaypoint
  :super ros::object
  :slots (_mission_type _target_waypoint _current_status _error_code ))

(defmethod dji_sdk::MissionStatusWaypoint
  (:init
   (&key
    ((:mission_type __mission_type) 0)
    ((:target_waypoint __target_waypoint) 0)
    ((:current_status __current_status) 0)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _mission_type (round __mission_type))
   (setq _target_waypoint (round __target_waypoint))
   (setq _current_status (round __current_status))
   (setq _error_code (round __error_code))
   self)
  (:mission_type
   (&optional __mission_type)
   (if __mission_type (setq _mission_type __mission_type)) _mission_type)
  (:target_waypoint
   (&optional __target_waypoint)
   (if __target_waypoint (setq _target_waypoint __target_waypoint)) _target_waypoint)
  (:current_status
   (&optional __current_status)
   (if __current_status (setq _current_status __current_status)) _current_status)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; uint8 _mission_type
    1
    ;; uint8 _target_waypoint
    1
    ;; uint8 _current_status
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mission_type
       (write-byte _mission_type s)
     ;; uint8 _target_waypoint
       (write-byte _target_waypoint s)
     ;; uint8 _current_status
       (write-byte _current_status s)
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mission_type
     (setq _mission_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target_waypoint
     (setq _target_waypoint (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current_status
     (setq _current_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::MissionStatusWaypoint :md5sum-) "4f2b7b1e7f32be55abc541c1b7552d41")
(setf (get dji_sdk::MissionStatusWaypoint :datatype-) "dji_sdk/MissionStatusWaypoint")
(setf (get dji_sdk::MissionStatusWaypoint :definition-)
      "uint8 mission_type
uint8 target_waypoint
uint8 current_status
uint8 error_code

")



(provide :dji_sdk/MissionStatusWaypoint "4f2b7b1e7f32be55abc541c1b7552d41")


