;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MessageFrequencyControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MessageFrequencyControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MESSAGEFREQUENCYCONTROL")
  (make-package "DJI_SDK::MESSAGEFREQUENCYCONTROL"))
(unless (find-package "DJI_SDK::MESSAGEFREQUENCYCONTROLREQUEST")
  (make-package "DJI_SDK::MESSAGEFREQUENCYCONTROLREQUEST"))
(unless (find-package "DJI_SDK::MESSAGEFREQUENCYCONTROLRESPONSE")
  (make-package "DJI_SDK::MESSAGEFREQUENCYCONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MessageFrequencyControlRequest
  :super ros::object
  :slots (_frequency ))

(defmethod dji_sdk::MessageFrequencyControlRequest
  (:init
   (&key
    ((:frequency __frequency) (make-array 16 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _frequency __frequency)
   self)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:serialization-length
   ()
   (+
    ;; uint8[16] _frequency
    (* 1    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[16] _frequency
     (princ _frequency s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[16] _frequency
   (setq _frequency (make-array 16 :element-type :char))
   (replace _frequency buf :start2 ptr-) (incf ptr- 16)
   ;;
   self)
  )

(defclass dji_sdk::MessageFrequencyControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MessageFrequencyControlResponse
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

(defclass dji_sdk::MessageFrequencyControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::MessageFrequencyControl :md5sum-) "631e88e1468cdc8d59e5bd64d8267053")
(setf (get dji_sdk::MessageFrequencyControl :datatype-) "dji_sdk/MessageFrequencyControl")
(setf (get dji_sdk::MessageFrequencyControl :request) dji_sdk::MessageFrequencyControlRequest)
(setf (get dji_sdk::MessageFrequencyControl :response) dji_sdk::MessageFrequencyControlResponse)

(defmethod dji_sdk::MessageFrequencyControlRequest
  (:response () (instance dji_sdk::MessageFrequencyControlResponse :init)))

(setf (get dji_sdk::MessageFrequencyControlRequest :md5sum-) "631e88e1468cdc8d59e5bd64d8267053")
(setf (get dji_sdk::MessageFrequencyControlRequest :datatype-) "dji_sdk/MessageFrequencyControlRequest")
(setf (get dji_sdk::MessageFrequencyControlRequest :definition-)
      "uint8[16] frequency
---
bool result

")

(setf (get dji_sdk::MessageFrequencyControlResponse :md5sum-) "631e88e1468cdc8d59e5bd64d8267053")
(setf (get dji_sdk::MessageFrequencyControlResponse :datatype-) "dji_sdk/MessageFrequencyControlResponse")
(setf (get dji_sdk::MessageFrequencyControlResponse :definition-)
      "uint8[16] frequency
---
bool result

")



(provide :dji_sdk/MessageFrequencyControl "631e88e1468cdc8d59e5bd64d8267053")


