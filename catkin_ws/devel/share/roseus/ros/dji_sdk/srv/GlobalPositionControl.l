;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::GlobalPositionControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'GlobalPositionControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::GLOBALPOSITIONCONTROL")
  (make-package "DJI_SDK::GLOBALPOSITIONCONTROL"))
(unless (find-package "DJI_SDK::GLOBALPOSITIONCONTROLREQUEST")
  (make-package "DJI_SDK::GLOBALPOSITIONCONTROLREQUEST"))
(unless (find-package "DJI_SDK::GLOBALPOSITIONCONTROLRESPONSE")
  (make-package "DJI_SDK::GLOBALPOSITIONCONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::GlobalPositionControlRequest
  :super ros::object
  :slots (_latitude _longitude _altitude _yaw ))

(defmethod dji_sdk::GlobalPositionControlRequest
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _yaw (float __yaw))
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
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float32 _altitude
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::GlobalPositionControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::GlobalPositionControlResponse
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

(defclass dji_sdk::GlobalPositionControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::GlobalPositionControl :md5sum-) "760463c3d8356eaf13428439b7b2ac10")
(setf (get dji_sdk::GlobalPositionControl :datatype-) "dji_sdk/GlobalPositionControl")
(setf (get dji_sdk::GlobalPositionControl :request) dji_sdk::GlobalPositionControlRequest)
(setf (get dji_sdk::GlobalPositionControl :response) dji_sdk::GlobalPositionControlResponse)

(defmethod dji_sdk::GlobalPositionControlRequest
  (:response () (instance dji_sdk::GlobalPositionControlResponse :init)))

(setf (get dji_sdk::GlobalPositionControlRequest :md5sum-) "760463c3d8356eaf13428439b7b2ac10")
(setf (get dji_sdk::GlobalPositionControlRequest :datatype-) "dji_sdk/GlobalPositionControlRequest")
(setf (get dji_sdk::GlobalPositionControlRequest :definition-)
      "
float64 latitude

float64 longitude
float32 altitude

float32 yaw
---
bool result

")

(setf (get dji_sdk::GlobalPositionControlResponse :md5sum-) "760463c3d8356eaf13428439b7b2ac10")
(setf (get dji_sdk::GlobalPositionControlResponse :datatype-) "dji_sdk/GlobalPositionControlResponse")
(setf (get dji_sdk::GlobalPositionControlResponse :definition-)
      "
float64 latitude

float64 longitude
float32 altitude

float32 yaw
---
bool result

")



(provide :dji_sdk/GlobalPositionControl "760463c3d8356eaf13428439b7b2ac10")


