;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::Activation)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'Activation (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::ACTIVATION")
  (make-package "DJI_SDK::ACTIVATION"))
(unless (find-package "DJI_SDK::ACTIVATIONREQUEST")
  (make-package "DJI_SDK::ACTIVATIONREQUEST"))
(unless (find-package "DJI_SDK::ACTIVATIONRESPONSE")
  (make-package "DJI_SDK::ACTIVATIONRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::ActivationRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::ActivationRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dji_sdk::ActivationResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::ActivationResponse
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

(defclass dji_sdk::Activation
  :super ros::object
  :slots ())

(setf (get dji_sdk::Activation :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::Activation :datatype-) "dji_sdk/Activation")
(setf (get dji_sdk::Activation :request) dji_sdk::ActivationRequest)
(setf (get dji_sdk::Activation :response) dji_sdk::ActivationResponse)

(defmethod dji_sdk::ActivationRequest
  (:response () (instance dji_sdk::ActivationResponse :init)))

(setf (get dji_sdk::ActivationRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::ActivationRequest :datatype-) "dji_sdk/ActivationRequest")
(setf (get dji_sdk::ActivationRequest :definition-)
      "---
bool result

")

(setf (get dji_sdk::ActivationResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::ActivationResponse :datatype-) "dji_sdk/ActivationResponse")
(setf (get dji_sdk::ActivationResponse :definition-)
      "---
bool result

")



(provide :dji_sdk/Activation "eb13ac1f1354ccecb7941ee8fa2192e8")


