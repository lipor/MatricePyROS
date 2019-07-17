;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::VirtualRCEnableControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'VirtualRCEnableControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::VIRTUALRCENABLECONTROL")
  (make-package "DJI_SDK::VIRTUALRCENABLECONTROL"))
(unless (find-package "DJI_SDK::VIRTUALRCENABLECONTROLREQUEST")
  (make-package "DJI_SDK::VIRTUALRCENABLECONTROLREQUEST"))
(unless (find-package "DJI_SDK::VIRTUALRCENABLECONTROLRESPONSE")
  (make-package "DJI_SDK::VIRTUALRCENABLECONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::VirtualRCEnableControlRequest
  :super ros::object
  :slots (_enable _if_back_to_real ))

(defmethod dji_sdk::VirtualRCEnableControlRequest
  (:init
   (&key
    ((:enable __enable) 0)
    ((:if_back_to_real __if_back_to_real) 0)
    )
   (send-super :init)
   (setq _enable (round __enable))
   (setq _if_back_to_real (round __if_back_to_real))
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:if_back_to_real
   (&optional __if_back_to_real)
   (if __if_back_to_real (setq _if_back_to_real __if_back_to_real)) _if_back_to_real)
  (:serialization-length
   ()
   (+
    ;; uint8 _enable
    1
    ;; uint8 _if_back_to_real
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _enable
       (write-byte _enable s)
     ;; uint8 _if_back_to_real
       (write-byte _if_back_to_real s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _enable
     (setq _enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _if_back_to_real
     (setq _if_back_to_real (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::VirtualRCEnableControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::VirtualRCEnableControlResponse
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

(defclass dji_sdk::VirtualRCEnableControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::VirtualRCEnableControl :md5sum-) "20f7ad98ee118e7dcd3a99507a0c866f")
(setf (get dji_sdk::VirtualRCEnableControl :datatype-) "dji_sdk/VirtualRCEnableControl")
(setf (get dji_sdk::VirtualRCEnableControl :request) dji_sdk::VirtualRCEnableControlRequest)
(setf (get dji_sdk::VirtualRCEnableControl :response) dji_sdk::VirtualRCEnableControlResponse)

(defmethod dji_sdk::VirtualRCEnableControlRequest
  (:response () (instance dji_sdk::VirtualRCEnableControlResponse :init)))

(setf (get dji_sdk::VirtualRCEnableControlRequest :md5sum-) "20f7ad98ee118e7dcd3a99507a0c866f")
(setf (get dji_sdk::VirtualRCEnableControlRequest :datatype-) "dji_sdk/VirtualRCEnableControlRequest")
(setf (get dji_sdk::VirtualRCEnableControlRequest :definition-)
      "uint8 enable
uint8 if_back_to_real


---
bool result

")

(setf (get dji_sdk::VirtualRCEnableControlResponse :md5sum-) "20f7ad98ee118e7dcd3a99507a0c866f")
(setf (get dji_sdk::VirtualRCEnableControlResponse :datatype-) "dji_sdk/VirtualRCEnableControlResponse")
(setf (get dji_sdk::VirtualRCEnableControlResponse :definition-)
      "uint8 enable
uint8 if_back_to_real


---
bool result

")



(provide :dji_sdk/VirtualRCEnableControl "20f7ad98ee118e7dcd3a99507a0c866f")


