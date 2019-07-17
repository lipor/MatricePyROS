;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::VelocityControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'VelocityControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::VELOCITYCONTROL")
  (make-package "DJI_SDK::VELOCITYCONTROL"))
(unless (find-package "DJI_SDK::VELOCITYCONTROLREQUEST")
  (make-package "DJI_SDK::VELOCITYCONTROLREQUEST"))
(unless (find-package "DJI_SDK::VELOCITYCONTROLRESPONSE")
  (make-package "DJI_SDK::VELOCITYCONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::VelocityControlRequest
  :super ros::object
  :slots (_frame _vx _vy _vz _yawRate ))

(defmethod dji_sdk::VelocityControlRequest
  (:init
   (&key
    ((:frame __frame) 0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:yawRate __yawRate) 0.0)
    )
   (send-super :init)
   (setq _frame (round __frame))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _yawRate (float __yawRate))
   self)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:yawRate
   (&optional __yawRate)
   (if __yawRate (setq _yawRate __yawRate)) _yawRate)
  (:serialization-length
   ()
   (+
    ;; uint8 _frame
    1
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vz
    4
    ;; float32 _yawRate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _frame
       (write-byte _frame s)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yawRate
       (sys::poke _yawRate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _frame
     (setq _frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz
     (setq _vz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yawRate
     (setq _yawRate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::VelocityControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::VelocityControlResponse
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

(defclass dji_sdk::VelocityControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::VelocityControl :md5sum-) "6984cb35c6197216fa18c628573ee383")
(setf (get dji_sdk::VelocityControl :datatype-) "dji_sdk/VelocityControl")
(setf (get dji_sdk::VelocityControl :request) dji_sdk::VelocityControlRequest)
(setf (get dji_sdk::VelocityControl :response) dji_sdk::VelocityControlResponse)

(defmethod dji_sdk::VelocityControlRequest
  (:response () (instance dji_sdk::VelocityControlResponse :init)))

(setf (get dji_sdk::VelocityControlRequest :md5sum-) "6984cb35c6197216fa18c628573ee383")
(setf (get dji_sdk::VelocityControlRequest :datatype-) "dji_sdk/VelocityControlRequest")
(setf (get dji_sdk::VelocityControlRequest :definition-)
      "uint8 frame
float32 vx
float32 vy
float32 vz
float32 yawRate
---
bool result

")

(setf (get dji_sdk::VelocityControlResponse :md5sum-) "6984cb35c6197216fa18c628573ee383")
(setf (get dji_sdk::VelocityControlResponse :datatype-) "dji_sdk/VelocityControlResponse")
(setf (get dji_sdk::VelocityControlResponse :definition-)
      "uint8 frame
float32 vx
float32 vy
float32 vz
float32 yawRate
---
bool result

")



(provide :dji_sdk/VelocityControl "6984cb35c6197216fa18c628573ee383")


