;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionFollowmeTask)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionFollowmeTask (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONFOLLOWMETASK")
  (make-package "DJI_SDK::MISSIONFOLLOWMETASK"))

(in-package "ROS")
;;//! \htmlinclude MissionFollowmeTask.msg.html


(defclass dji_sdk::MissionFollowmeTask
  :super ros::object
  :slots (_mode _yaw_mode _initial_latitude _initial_longitude _initial_altitude _sensitivity ))

(defmethod dji_sdk::MissionFollowmeTask
  (:init
   (&key
    ((:mode __mode) 0)
    ((:yaw_mode __yaw_mode) 0)
    ((:initial_latitude __initial_latitude) 0.0)
    ((:initial_longitude __initial_longitude) 0.0)
    ((:initial_altitude __initial_altitude) 0)
    ((:sensitivity __sensitivity) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _yaw_mode (round __yaw_mode))
   (setq _initial_latitude (float __initial_latitude))
   (setq _initial_longitude (float __initial_longitude))
   (setq _initial_altitude (round __initial_altitude))
   (setq _sensitivity (round __sensitivity))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:yaw_mode
   (&optional __yaw_mode)
   (if __yaw_mode (setq _yaw_mode __yaw_mode)) _yaw_mode)
  (:initial_latitude
   (&optional __initial_latitude)
   (if __initial_latitude (setq _initial_latitude __initial_latitude)) _initial_latitude)
  (:initial_longitude
   (&optional __initial_longitude)
   (if __initial_longitude (setq _initial_longitude __initial_longitude)) _initial_longitude)
  (:initial_altitude
   (&optional __initial_altitude)
   (if __initial_altitude (setq _initial_altitude __initial_altitude)) _initial_altitude)
  (:sensitivity
   (&optional __sensitivity)
   (if __sensitivity (setq _sensitivity __sensitivity)) _sensitivity)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _yaw_mode
    1
    ;; float64 _initial_latitude
    8
    ;; float64 _initial_longitude
    8
    ;; uint16 _initial_altitude
    2
    ;; uint8 _sensitivity
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _yaw_mode
       (write-byte _yaw_mode s)
     ;; float64 _initial_latitude
       (sys::poke _initial_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _initial_longitude
       (sys::poke _initial_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _initial_altitude
       (write-word _initial_altitude s)
     ;; uint8 _sensitivity
       (write-byte _sensitivity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _yaw_mode
     (setq _yaw_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _initial_latitude
     (setq _initial_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _initial_longitude
     (setq _initial_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _initial_altitude
     (setq _initial_altitude (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _sensitivity
     (setq _sensitivity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::MissionFollowmeTask :md5sum-) "0b5547386d29daca9e6c32595ec4ca50")
(setf (get dji_sdk::MissionFollowmeTask :datatype-) "dji_sdk/MissionFollowmeTask")
(setf (get dji_sdk::MissionFollowmeTask :definition-)
      "uint8 mode
uint8 yaw_mode
float64 initial_latitude
float64 initial_longitude
uint16 initial_altitude
uint8 sensitivity

")



(provide :dji_sdk/MissionFollowmeTask "0b5547386d29daca9e6c32595ec4ca50")


