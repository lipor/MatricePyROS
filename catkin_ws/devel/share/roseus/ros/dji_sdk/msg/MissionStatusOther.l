;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionStatusOther)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionStatusOther (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONSTATUSOTHER")
  (make-package "DJI_SDK::MISSIONSTATUSOTHER"))

(in-package "ROS")
;;//! \htmlinclude MissionStatusOther.msg.html


(defclass dji_sdk::MissionStatusOther
  :super ros::object
  :slots (_mission_type _last_mission_type _is_broken _error_code ))

(defmethod dji_sdk::MissionStatusOther
  (:init
   (&key
    ((:mission_type __mission_type) 0)
    ((:last_mission_type __last_mission_type) 0)
    ((:is_broken __is_broken) 0)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _mission_type (round __mission_type))
   (setq _last_mission_type (round __last_mission_type))
   (setq _is_broken (round __is_broken))
   (setq _error_code (round __error_code))
   self)
  (:mission_type
   (&optional __mission_type)
   (if __mission_type (setq _mission_type __mission_type)) _mission_type)
  (:last_mission_type
   (&optional __last_mission_type)
   (if __last_mission_type (setq _last_mission_type __last_mission_type)) _last_mission_type)
  (:is_broken
   (&optional __is_broken)
   (if __is_broken (setq _is_broken __is_broken)) _is_broken)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; uint8 _mission_type
    1
    ;; uint8 _last_mission_type
    1
    ;; uint8 _is_broken
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
     ;; uint8 _last_mission_type
       (write-byte _last_mission_type s)
     ;; uint8 _is_broken
       (write-byte _is_broken s)
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mission_type
     (setq _mission_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _last_mission_type
     (setq _last_mission_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _is_broken
     (setq _is_broken (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::MissionStatusOther :md5sum-) "a0261ae1eb980895a8685db930ec1a68")
(setf (get dji_sdk::MissionStatusOther :datatype-) "dji_sdk/MissionStatusOther")
(setf (get dji_sdk::MissionStatusOther :definition-)
      "uint8 mission_type
uint8 last_mission_type
uint8 is_broken
uint8 error_code

")



(provide :dji_sdk/MissionStatusOther "a0261ae1eb980895a8685db930ec1a68")


