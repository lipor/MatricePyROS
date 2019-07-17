;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionEventWpReach)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionEventWpReach (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONEVENTWPREACH")
  (make-package "DJI_SDK::MISSIONEVENTWPREACH"))

(in-package "ROS")
;;//! \htmlinclude MissionEventWpReach.msg.html


(defclass dji_sdk::MissionEventWpReach
  :super ros::object
  :slots (_incident_type _waypoint_index _current_status ))

(defmethod dji_sdk::MissionEventWpReach
  (:init
   (&key
    ((:incident_type __incident_type) 0)
    ((:waypoint_index __waypoint_index) 0)
    ((:current_status __current_status) 0)
    )
   (send-super :init)
   (setq _incident_type (round __incident_type))
   (setq _waypoint_index (round __waypoint_index))
   (setq _current_status (round __current_status))
   self)
  (:incident_type
   (&optional __incident_type)
   (if __incident_type (setq _incident_type __incident_type)) _incident_type)
  (:waypoint_index
   (&optional __waypoint_index)
   (if __waypoint_index (setq _waypoint_index __waypoint_index)) _waypoint_index)
  (:current_status
   (&optional __current_status)
   (if __current_status (setq _current_status __current_status)) _current_status)
  (:serialization-length
   ()
   (+
    ;; uint8 _incident_type
    1
    ;; uint8 _waypoint_index
    1
    ;; uint8 _current_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _incident_type
       (write-byte _incident_type s)
     ;; uint8 _waypoint_index
       (write-byte _waypoint_index s)
     ;; uint8 _current_status
       (write-byte _current_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _incident_type
     (setq _incident_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _waypoint_index
     (setq _waypoint_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current_status
     (setq _current_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::MissionEventWpReach :md5sum-) "887664b69cd341b8a21df490bb79afea")
(setf (get dji_sdk::MissionEventWpReach :datatype-) "dji_sdk/MissionEventWpReach")
(setf (get dji_sdk::MissionEventWpReach :definition-)
      "uint8 incident_type
uint8 waypoint_index
uint8 current_status

")



(provide :dji_sdk/MissionEventWpReach "887664b69cd341b8a21df490bb79afea")


