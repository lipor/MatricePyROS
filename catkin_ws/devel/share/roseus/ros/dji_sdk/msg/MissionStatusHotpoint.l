;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionStatusHotpoint)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionStatusHotpoint (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONSTATUSHOTPOINT")
  (make-package "DJI_SDK::MISSIONSTATUSHOTPOINT"))

(in-package "ROS")
;;//! \htmlinclude MissionStatusHotpoint.msg.html


(defclass dji_sdk::MissionStatusHotpoint
  :super ros::object
  :slots (_mission_type _mission_status _hotpoint_radius _error_code _hotpoint_velocity ))

(defmethod dji_sdk::MissionStatusHotpoint
  (:init
   (&key
    ((:mission_type __mission_type) 0)
    ((:mission_status __mission_status) 0)
    ((:hotpoint_radius __hotpoint_radius) 0)
    ((:error_code __error_code) 0)
    ((:hotpoint_velocity __hotpoint_velocity) 0)
    )
   (send-super :init)
   (setq _mission_type (round __mission_type))
   (setq _mission_status (round __mission_status))
   (setq _hotpoint_radius (round __hotpoint_radius))
   (setq _error_code (round __error_code))
   (setq _hotpoint_velocity (round __hotpoint_velocity))
   self)
  (:mission_type
   (&optional __mission_type)
   (if __mission_type (setq _mission_type __mission_type)) _mission_type)
  (:mission_status
   (&optional __mission_status)
   (if __mission_status (setq _mission_status __mission_status)) _mission_status)
  (:hotpoint_radius
   (&optional __hotpoint_radius)
   (if __hotpoint_radius (setq _hotpoint_radius __hotpoint_radius)) _hotpoint_radius)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:hotpoint_velocity
   (&optional __hotpoint_velocity)
   (if __hotpoint_velocity (setq _hotpoint_velocity __hotpoint_velocity)) _hotpoint_velocity)
  (:serialization-length
   ()
   (+
    ;; uint8 _mission_type
    1
    ;; uint8 _mission_status
    1
    ;; uint16 _hotpoint_radius
    2
    ;; uint8 _error_code
    1
    ;; uint8 _hotpoint_velocity
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mission_type
       (write-byte _mission_type s)
     ;; uint8 _mission_status
       (write-byte _mission_status s)
     ;; uint16 _hotpoint_radius
       (write-word _hotpoint_radius s)
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; uint8 _hotpoint_velocity
       (write-byte _hotpoint_velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mission_type
     (setq _mission_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mission_status
     (setq _mission_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _hotpoint_radius
     (setq _hotpoint_radius (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hotpoint_velocity
     (setq _hotpoint_velocity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::MissionStatusHotpoint :md5sum-) "8139577a287bd3bb109446868782e2f7")
(setf (get dji_sdk::MissionStatusHotpoint :datatype-) "dji_sdk/MissionStatusHotpoint")
(setf (get dji_sdk::MissionStatusHotpoint :definition-)
      "uint8 mission_type
uint8 mission_status
uint16 hotpoint_radius
uint8 error_code
uint8 hotpoint_velocity

")



(provide :dji_sdk/MissionStatusHotpoint "8139577a287bd3bb109446868782e2f7")


