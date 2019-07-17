;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::SDKPermissionControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'SDKPermissionControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::SDKPERMISSIONCONTROL")
  (make-package "DJI_SDK::SDKPERMISSIONCONTROL"))
(unless (find-package "DJI_SDK::SDKPERMISSIONCONTROLREQUEST")
  (make-package "DJI_SDK::SDKPERMISSIONCONTROLREQUEST"))
(unless (find-package "DJI_SDK::SDKPERMISSIONCONTROLRESPONSE")
  (make-package "DJI_SDK::SDKPERMISSIONCONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::SDKPermissionControlRequest
  :super ros::object
  :slots (_control_enable ))

(defmethod dji_sdk::SDKPermissionControlRequest
  (:init
   (&key
    ((:control_enable __control_enable) 0)
    )
   (send-super :init)
   (setq _control_enable (round __control_enable))
   self)
  (:control_enable
   (&optional __control_enable)
   (if __control_enable (setq _control_enable __control_enable)) _control_enable)
  (:serialization-length
   ()
   (+
    ;; uint8 _control_enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _control_enable
       (write-byte _control_enable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _control_enable
     (setq _control_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::SDKPermissionControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::SDKPermissionControlResponse
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

(defclass dji_sdk::SDKPermissionControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::SDKPermissionControl :md5sum-) "de4f6d2b1e0b995a7d472739c6318805")
(setf (get dji_sdk::SDKPermissionControl :datatype-) "dji_sdk/SDKPermissionControl")
(setf (get dji_sdk::SDKPermissionControl :request) dji_sdk::SDKPermissionControlRequest)
(setf (get dji_sdk::SDKPermissionControl :response) dji_sdk::SDKPermissionControlResponse)

(defmethod dji_sdk::SDKPermissionControlRequest
  (:response () (instance dji_sdk::SDKPermissionControlResponse :init)))

(setf (get dji_sdk::SDKPermissionControlRequest :md5sum-) "de4f6d2b1e0b995a7d472739c6318805")
(setf (get dji_sdk::SDKPermissionControlRequest :datatype-) "dji_sdk/SDKPermissionControlRequest")
(setf (get dji_sdk::SDKPermissionControlRequest :definition-)
      "

uint8 control_enable
---
bool result

")

(setf (get dji_sdk::SDKPermissionControlResponse :md5sum-) "de4f6d2b1e0b995a7d472739c6318805")
(setf (get dji_sdk::SDKPermissionControlResponse :datatype-) "dji_sdk/SDKPermissionControlResponse")
(setf (get dji_sdk::SDKPermissionControlResponse :definition-)
      "

uint8 control_enable
---
bool result

")



(provide :dji_sdk/SDKPermissionControl "de4f6d2b1e0b995a7d472739c6318805")


