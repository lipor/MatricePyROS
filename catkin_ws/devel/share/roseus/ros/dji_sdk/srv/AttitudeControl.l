;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::AttitudeControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'AttitudeControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::ATTITUDECONTROL")
  (make-package "DJI_SDK::ATTITUDECONTROL"))
(unless (find-package "DJI_SDK::ATTITUDECONTROLREQUEST")
  (make-package "DJI_SDK::ATTITUDECONTROLREQUEST"))
(unless (find-package "DJI_SDK::ATTITUDECONTROLRESPONSE")
  (make-package "DJI_SDK::ATTITUDECONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::AttitudeControlRequest
  :super ros::object
  :slots (_flag _x _y _z _yaw ))

(defmethod dji_sdk::AttitudeControlRequest
  (:init
   (&key
    ((:flag __flag) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
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
    ;; uint8 _flag
    1
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
     ;; uint8 _flag
       (write-byte _flag s)
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
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(defclass dji_sdk::AttitudeControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::AttitudeControlResponse
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

(defclass dji_sdk::AttitudeControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::AttitudeControl :md5sum-) "29c0571c7f764a69752f1f1d3dac2ca2")
(setf (get dji_sdk::AttitudeControl :datatype-) "dji_sdk/AttitudeControl")
(setf (get dji_sdk::AttitudeControl :request) dji_sdk::AttitudeControlRequest)
(setf (get dji_sdk::AttitudeControl :response) dji_sdk::AttitudeControlResponse)

(defmethod dji_sdk::AttitudeControlRequest
  (:response () (instance dji_sdk::AttitudeControlResponse :init)))

(setf (get dji_sdk::AttitudeControlRequest :md5sum-) "29c0571c7f764a69752f1f1d3dac2ca2")
(setf (get dji_sdk::AttitudeControlRequest :datatype-) "dji_sdk/AttitudeControlRequest")
(setf (get dji_sdk::AttitudeControlRequest :definition-)
      "uint8 flag
float32 x
float32 y
float32 z
float32 yaw
---
bool result

")

(setf (get dji_sdk::AttitudeControlResponse :md5sum-) "29c0571c7f764a69752f1f1d3dac2ca2")
(setf (get dji_sdk::AttitudeControlResponse :datatype-) "dji_sdk/AttitudeControlResponse")
(setf (get dji_sdk::AttitudeControlResponse :definition-)
      "uint8 flag
float32 x
float32 y
float32 z
float32 yaw
---
bool result

")



(provide :dji_sdk/AttitudeControl "29c0571c7f764a69752f1f1d3dac2ca2")


