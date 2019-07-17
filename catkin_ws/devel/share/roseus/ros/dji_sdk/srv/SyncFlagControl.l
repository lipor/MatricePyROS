;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::SyncFlagControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'SyncFlagControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::SYNCFLAGCONTROL")
  (make-package "DJI_SDK::SYNCFLAGCONTROL"))
(unless (find-package "DJI_SDK::SYNCFLAGCONTROLREQUEST")
  (make-package "DJI_SDK::SYNCFLAGCONTROLREQUEST"))
(unless (find-package "DJI_SDK::SYNCFLAGCONTROLRESPONSE")
  (make-package "DJI_SDK::SYNCFLAGCONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::SyncFlagControlRequest
  :super ros::object
  :slots (_frequency ))

(defmethod dji_sdk::SyncFlagControlRequest
  (:init
   (&key
    ((:frequency __frequency) 0)
    )
   (send-super :init)
   (setq _frequency (round __frequency))
   self)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:serialization-length
   ()
   (+
    ;; uint32 _frequency
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frequency
       (write-long _frequency s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frequency
     (setq _frequency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::SyncFlagControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::SyncFlagControlResponse
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

(defclass dji_sdk::SyncFlagControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::SyncFlagControl :md5sum-) "848e0c067edd66153227f7c9aad5132b")
(setf (get dji_sdk::SyncFlagControl :datatype-) "dji_sdk/SyncFlagControl")
(setf (get dji_sdk::SyncFlagControl :request) dji_sdk::SyncFlagControlRequest)
(setf (get dji_sdk::SyncFlagControl :response) dji_sdk::SyncFlagControlResponse)

(defmethod dji_sdk::SyncFlagControlRequest
  (:response () (instance dji_sdk::SyncFlagControlResponse :init)))

(setf (get dji_sdk::SyncFlagControlRequest :md5sum-) "848e0c067edd66153227f7c9aad5132b")
(setf (get dji_sdk::SyncFlagControlRequest :datatype-) "dji_sdk/SyncFlagControlRequest")
(setf (get dji_sdk::SyncFlagControlRequest :definition-)
      "uint32 frequency
---
bool result

")

(setf (get dji_sdk::SyncFlagControlResponse :md5sum-) "848e0c067edd66153227f7c9aad5132b")
(setf (get dji_sdk::SyncFlagControlResponse :datatype-) "dji_sdk/SyncFlagControlResponse")
(setf (get dji_sdk::SyncFlagControlResponse :definition-)
      "uint32 frequency
---
bool result

")



(provide :dji_sdk/SyncFlagControl "848e0c067edd66153227f7c9aad5132b")


