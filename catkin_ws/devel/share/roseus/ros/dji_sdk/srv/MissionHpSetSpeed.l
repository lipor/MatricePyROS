;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionHpSetSpeed)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionHpSetSpeed (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONHPSETSPEED")
  (make-package "DJI_SDK::MISSIONHPSETSPEED"))
(unless (find-package "DJI_SDK::MISSIONHPSETSPEEDREQUEST")
  (make-package "DJI_SDK::MISSIONHPSETSPEEDREQUEST"))
(unless (find-package "DJI_SDK::MISSIONHPSETSPEEDRESPONSE")
  (make-package "DJI_SDK::MISSIONHPSETSPEEDRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionHpSetSpeedRequest
  :super ros::object
  :slots (_speed _direction ))

(defmethod dji_sdk::MissionHpSetSpeedRequest
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _direction (round __direction))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ;; uint8 _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _direction
       (write-byte _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::MissionHpSetSpeedResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionHpSetSpeedResponse
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

(defclass dji_sdk::MissionHpSetSpeed
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionHpSetSpeed :md5sum-) "da0df5b8181232e1f4ba7f7d4faba414")
(setf (get dji_sdk::MissionHpSetSpeed :datatype-) "dji_sdk/MissionHpSetSpeed")
(setf (get dji_sdk::MissionHpSetSpeed :request) dji_sdk::MissionHpSetSpeedRequest)
(setf (get dji_sdk::MissionHpSetSpeed :response) dji_sdk::MissionHpSetSpeedResponse)

(defmethod dji_sdk::MissionHpSetSpeedRequest
  (:response () (instance dji_sdk::MissionHpSetSpeedResponse :init)))

(setf (get dji_sdk::MissionHpSetSpeedRequest :md5sum-) "da0df5b8181232e1f4ba7f7d4faba414")
(setf (get dji_sdk::MissionHpSetSpeedRequest :datatype-) "dji_sdk/MissionHpSetSpeedRequest")
(setf (get dji_sdk::MissionHpSetSpeedRequest :definition-)
      "float32 speed
uint8 direction
---
bool result

")

(setf (get dji_sdk::MissionHpSetSpeedResponse :md5sum-) "da0df5b8181232e1f4ba7f7d4faba414")
(setf (get dji_sdk::MissionHpSetSpeedResponse :datatype-) "dji_sdk/MissionHpSetSpeedResponse")
(setf (get dji_sdk::MissionHpSetSpeedResponse :definition-)
      "float32 speed
uint8 direction
---
bool result

")



(provide :dji_sdk/MissionHpSetSpeed "da0df5b8181232e1f4ba7f7d4faba414")


