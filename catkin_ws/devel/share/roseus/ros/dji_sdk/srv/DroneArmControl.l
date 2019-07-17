;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::DroneArmControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'DroneArmControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::DRONEARMCONTROL")
  (make-package "DJI_SDK::DRONEARMCONTROL"))
(unless (find-package "DJI_SDK::DRONEARMCONTROLREQUEST")
  (make-package "DJI_SDK::DRONEARMCONTROLREQUEST"))
(unless (find-package "DJI_SDK::DRONEARMCONTROLRESPONSE")
  (make-package "DJI_SDK::DRONEARMCONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::DroneArmControlRequest
  :super ros::object
  :slots (_arm ))

(defmethod dji_sdk::DroneArmControlRequest
  (:init
   (&key
    ((:arm __arm) 0)
    )
   (send-super :init)
   (setq _arm (round __arm))
   self)
  (:arm
   (&optional __arm)
   (if __arm (setq _arm __arm)) _arm)
  (:serialization-length
   ()
   (+
    ;; uint8 _arm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _arm
       (write-byte _arm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _arm
     (setq _arm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::DroneArmControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::DroneArmControlResponse
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

(defclass dji_sdk::DroneArmControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::DroneArmControl :md5sum-) "dd0555f68f747c630a22ca214d8ef45c")
(setf (get dji_sdk::DroneArmControl :datatype-) "dji_sdk/DroneArmControl")
(setf (get dji_sdk::DroneArmControl :request) dji_sdk::DroneArmControlRequest)
(setf (get dji_sdk::DroneArmControl :response) dji_sdk::DroneArmControlResponse)

(defmethod dji_sdk::DroneArmControlRequest
  (:response () (instance dji_sdk::DroneArmControlResponse :init)))

(setf (get dji_sdk::DroneArmControlRequest :md5sum-) "dd0555f68f747c630a22ca214d8ef45c")
(setf (get dji_sdk::DroneArmControlRequest :datatype-) "dji_sdk/DroneArmControlRequest")
(setf (get dji_sdk::DroneArmControlRequest :definition-)
      "uint8 arm
---
bool result

")

(setf (get dji_sdk::DroneArmControlResponse :md5sum-) "dd0555f68f747c630a22ca214d8ef45c")
(setf (get dji_sdk::DroneArmControlResponse :datatype-) "dji_sdk/DroneArmControlResponse")
(setf (get dji_sdk::DroneArmControlResponse :definition-)
      "uint8 arm
---
bool result

")



(provide :dji_sdk/DroneArmControl "dd0555f68f747c630a22ca214d8ef45c")


