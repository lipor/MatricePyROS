;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionWpGetSpeed)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionWpGetSpeed (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONWPGETSPEED")
  (make-package "DJI_SDK::MISSIONWPGETSPEED"))
(unless (find-package "DJI_SDK::MISSIONWPGETSPEEDREQUEST")
  (make-package "DJI_SDK::MISSIONWPGETSPEEDREQUEST"))
(unless (find-package "DJI_SDK::MISSIONWPGETSPEEDRESPONSE")
  (make-package "DJI_SDK::MISSIONWPGETSPEEDRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionWpGetSpeedRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::MissionWpGetSpeedRequest
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

(defclass dji_sdk::MissionWpGetSpeedResponse
  :super ros::object
  :slots (_speed ))

(defmethod dji_sdk::MissionWpGetSpeedResponse
  (:init
   (&key
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::MissionWpGetSpeed
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionWpGetSpeed :md5sum-) "ca65bba734a79b4a6707341d829f4d5c")
(setf (get dji_sdk::MissionWpGetSpeed :datatype-) "dji_sdk/MissionWpGetSpeed")
(setf (get dji_sdk::MissionWpGetSpeed :request) dji_sdk::MissionWpGetSpeedRequest)
(setf (get dji_sdk::MissionWpGetSpeed :response) dji_sdk::MissionWpGetSpeedResponse)

(defmethod dji_sdk::MissionWpGetSpeedRequest
  (:response () (instance dji_sdk::MissionWpGetSpeedResponse :init)))

(setf (get dji_sdk::MissionWpGetSpeedRequest :md5sum-) "ca65bba734a79b4a6707341d829f4d5c")
(setf (get dji_sdk::MissionWpGetSpeedRequest :datatype-) "dji_sdk/MissionWpGetSpeedRequest")
(setf (get dji_sdk::MissionWpGetSpeedRequest :definition-)
      "---
float32 speed

")

(setf (get dji_sdk::MissionWpGetSpeedResponse :md5sum-) "ca65bba734a79b4a6707341d829f4d5c")
(setf (get dji_sdk::MissionWpGetSpeedResponse :datatype-) "dji_sdk/MissionWpGetSpeedResponse")
(setf (get dji_sdk::MissionWpGetSpeedResponse :definition-)
      "---
float32 speed

")



(provide :dji_sdk/MissionWpGetSpeed "ca65bba734a79b4a6707341d829f4d5c")


