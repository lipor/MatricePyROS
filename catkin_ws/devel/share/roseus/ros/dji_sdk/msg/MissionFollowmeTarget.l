;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionFollowmeTarget)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionFollowmeTarget (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONFOLLOWMETARGET")
  (make-package "DJI_SDK::MISSIONFOLLOWMETARGET"))

(in-package "ROS")
;;//! \htmlinclude MissionFollowmeTarget.msg.html


(defclass dji_sdk::MissionFollowmeTarget
  :super ros::object
  :slots (_latitude _longitude _altitude ))

(defmethod dji_sdk::MissionFollowmeTarget
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (round __altitude))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; uint16 _altitude
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _altitude
       (write-word _altitude s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _altitude
     (setq _altitude (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dji_sdk::MissionFollowmeTarget :md5sum-) "3a0e9fef853d7437503847554a9f4ca1")
(setf (get dji_sdk::MissionFollowmeTarget :datatype-) "dji_sdk/MissionFollowmeTarget")
(setf (get dji_sdk::MissionFollowmeTarget :definition-)
      "float64 latitude
float64 longitude
uint16 altitude

")



(provide :dji_sdk/MissionFollowmeTarget "3a0e9fef853d7437503847554a9f4ca1")


