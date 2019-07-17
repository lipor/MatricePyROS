;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::LocalPositionControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'LocalPositionControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::LOCALPOSITIONCONTROL")
  (make-package "DJI_SDK::LOCALPOSITIONCONTROL"))
(unless (find-package "DJI_SDK::LOCALPOSITIONCONTROLREQUEST")
  (make-package "DJI_SDK::LOCALPOSITIONCONTROLREQUEST"))
(unless (find-package "DJI_SDK::LOCALPOSITIONCONTROLRESPONSE")
  (make-package "DJI_SDK::LOCALPOSITIONCONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::LocalPositionControlRequest
  :super ros::object
  :slots (_x _y _z _yaw ))

(defmethod dji_sdk::LocalPositionControlRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::LocalPositionControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::LocalPositionControlResponse
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

(defclass dji_sdk::LocalPositionControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::LocalPositionControl :md5sum-) "af2171d66d09e82c491cb7139793b007")
(setf (get dji_sdk::LocalPositionControl :datatype-) "dji_sdk/LocalPositionControl")
(setf (get dji_sdk::LocalPositionControl :request) dji_sdk::LocalPositionControlRequest)
(setf (get dji_sdk::LocalPositionControl :response) dji_sdk::LocalPositionControlResponse)

(defmethod dji_sdk::LocalPositionControlRequest
  (:response () (instance dji_sdk::LocalPositionControlResponse :init)))

(setf (get dji_sdk::LocalPositionControlRequest :md5sum-) "af2171d66d09e82c491cb7139793b007")
(setf (get dji_sdk::LocalPositionControlRequest :datatype-) "dji_sdk/LocalPositionControlRequest")
(setf (get dji_sdk::LocalPositionControlRequest :definition-)
      "float32 x
float32 y
float32 z

float32 yaw
---
bool result

")

(setf (get dji_sdk::LocalPositionControlResponse :md5sum-) "af2171d66d09e82c491cb7139793b007")
(setf (get dji_sdk::LocalPositionControlResponse :datatype-) "dji_sdk/LocalPositionControlResponse")
(setf (get dji_sdk::LocalPositionControlResponse :definition-)
      "float32 x
float32 y
float32 z

float32 yaw
---
bool result

")



(provide :dji_sdk/LocalPositionControl "af2171d66d09e82c491cb7139793b007")


