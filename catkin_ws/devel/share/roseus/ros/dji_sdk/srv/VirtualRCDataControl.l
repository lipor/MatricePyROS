;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::VirtualRCDataControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'VirtualRCDataControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::VIRTUALRCDATACONTROL")
  (make-package "DJI_SDK::VIRTUALRCDATACONTROL"))
(unless (find-package "DJI_SDK::VIRTUALRCDATACONTROLREQUEST")
  (make-package "DJI_SDK::VIRTUALRCDATACONTROLREQUEST"))
(unless (find-package "DJI_SDK::VIRTUALRCDATACONTROLRESPONSE")
  (make-package "DJI_SDK::VIRTUALRCDATACONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::VirtualRCDataControlRequest
  :super ros::object
  :slots (_channel_data ))

(defmethod dji_sdk::VirtualRCDataControlRequest
  (:init
   (&key
    ((:channel_data __channel_data) (make-array 16 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _channel_data __channel_data)
   self)
  (:channel_data
   (&optional __channel_data)
   (if __channel_data (setq _channel_data __channel_data)) _channel_data)
  (:serialization-length
   ()
   (+
    ;; uint32[16] _channel_data
    (* 4    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[16] _channel_data
     (dotimes (i 16)
       (write-long (elt _channel_data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[16] _channel_data
   (dotimes (i (length _channel_data))
     (setf (elt _channel_data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass dji_sdk::VirtualRCDataControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::VirtualRCDataControlResponse
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

(defclass dji_sdk::VirtualRCDataControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::VirtualRCDataControl :md5sum-) "f79b1fb00a282f2e0e1596e014134c60")
(setf (get dji_sdk::VirtualRCDataControl :datatype-) "dji_sdk/VirtualRCDataControl")
(setf (get dji_sdk::VirtualRCDataControl :request) dji_sdk::VirtualRCDataControlRequest)
(setf (get dji_sdk::VirtualRCDataControl :response) dji_sdk::VirtualRCDataControlResponse)

(defmethod dji_sdk::VirtualRCDataControlRequest
  (:response () (instance dji_sdk::VirtualRCDataControlResponse :init)))

(setf (get dji_sdk::VirtualRCDataControlRequest :md5sum-) "f79b1fb00a282f2e0e1596e014134c60")
(setf (get dji_sdk::VirtualRCDataControlRequest :datatype-) "dji_sdk/VirtualRCDataControlRequest")
(setf (get dji_sdk::VirtualRCDataControlRequest :definition-)
      "












uint32[16] channel_data
---
bool result

")

(setf (get dji_sdk::VirtualRCDataControlResponse :md5sum-) "f79b1fb00a282f2e0e1596e014134c60")
(setf (get dji_sdk::VirtualRCDataControlResponse :datatype-) "dji_sdk/VirtualRCDataControlResponse")
(setf (get dji_sdk::VirtualRCDataControlResponse :definition-)
      "












uint32[16] channel_data
---
bool result

")



(provide :dji_sdk/VirtualRCDataControl "f79b1fb00a282f2e0e1596e014134c60")


