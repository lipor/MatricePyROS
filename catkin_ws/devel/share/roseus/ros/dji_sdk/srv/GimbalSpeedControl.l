;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::GimbalSpeedControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'GimbalSpeedControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::GIMBALSPEEDCONTROL")
  (make-package "DJI_SDK::GIMBALSPEEDCONTROL"))
(unless (find-package "DJI_SDK::GIMBALSPEEDCONTROLREQUEST")
  (make-package "DJI_SDK::GIMBALSPEEDCONTROLREQUEST"))
(unless (find-package "DJI_SDK::GIMBALSPEEDCONTROLRESPONSE")
  (make-package "DJI_SDK::GIMBALSPEEDCONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::GimbalSpeedControlRequest
  :super ros::object
  :slots (_yaw_rate _roll_rate _pitch_rate ))

(defmethod dji_sdk::GimbalSpeedControlRequest
  (:init
   (&key
    ((:yaw_rate __yaw_rate) 0)
    ((:roll_rate __roll_rate) 0)
    ((:pitch_rate __pitch_rate) 0)
    )
   (send-super :init)
   (setq _yaw_rate (round __yaw_rate))
   (setq _roll_rate (round __roll_rate))
   (setq _pitch_rate (round __pitch_rate))
   self)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:roll_rate
   (&optional __roll_rate)
   (if __roll_rate (setq _roll_rate __roll_rate)) _roll_rate)
  (:pitch_rate
   (&optional __pitch_rate)
   (if __pitch_rate (setq _pitch_rate __pitch_rate)) _pitch_rate)
  (:serialization-length
   ()
   (+
    ;; int16 _yaw_rate
    2
    ;; int16 _roll_rate
    2
    ;; int16 _pitch_rate
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _yaw_rate
       (write-word _yaw_rate s)
     ;; int16 _roll_rate
       (write-word _roll_rate s)
     ;; int16 _pitch_rate
       (write-word _pitch_rate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _roll_rate
     (setq _roll_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pitch_rate
     (setq _pitch_rate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_sdk::GimbalSpeedControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::GimbalSpeedControlResponse
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

(defclass dji_sdk::GimbalSpeedControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::GimbalSpeedControl :md5sum-) "9faf8f80ceb051ef1bc0985e17a03fa5")
(setf (get dji_sdk::GimbalSpeedControl :datatype-) "dji_sdk/GimbalSpeedControl")
(setf (get dji_sdk::GimbalSpeedControl :request) dji_sdk::GimbalSpeedControlRequest)
(setf (get dji_sdk::GimbalSpeedControl :response) dji_sdk::GimbalSpeedControlResponse)

(defmethod dji_sdk::GimbalSpeedControlRequest
  (:response () (instance dji_sdk::GimbalSpeedControlResponse :init)))

(setf (get dji_sdk::GimbalSpeedControlRequest :md5sum-) "9faf8f80ceb051ef1bc0985e17a03fa5")
(setf (get dji_sdk::GimbalSpeedControlRequest :datatype-) "dji_sdk/GimbalSpeedControlRequest")
(setf (get dji_sdk::GimbalSpeedControlRequest :definition-)
      "

int16 yaw_rate
int16 roll_rate
int16 pitch_rate

---
bool result

")

(setf (get dji_sdk::GimbalSpeedControlResponse :md5sum-) "9faf8f80ceb051ef1bc0985e17a03fa5")
(setf (get dji_sdk::GimbalSpeedControlResponse :datatype-) "dji_sdk/GimbalSpeedControlResponse")
(setf (get dji_sdk::GimbalSpeedControlResponse :definition-)
      "

int16 yaw_rate
int16 roll_rate
int16 pitch_rate

---
bool result

")



(provide :dji_sdk/GimbalSpeedControl "9faf8f80ceb051ef1bc0985e17a03fa5")


