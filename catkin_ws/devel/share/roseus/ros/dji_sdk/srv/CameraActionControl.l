;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::CameraActionControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'CameraActionControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::CAMERAACTIONCONTROL")
  (make-package "DJI_SDK::CAMERAACTIONCONTROL"))
(unless (find-package "DJI_SDK::CAMERAACTIONCONTROLREQUEST")
  (make-package "DJI_SDK::CAMERAACTIONCONTROLREQUEST"))
(unless (find-package "DJI_SDK::CAMERAACTIONCONTROLRESPONSE")
  (make-package "DJI_SDK::CAMERAACTIONCONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::CameraActionControlRequest
  :super ros::object
  :slots (_camera_action ))

(defmethod dji_sdk::CameraActionControlRequest
  (:init
   (&key
    ((:camera_action __camera_action) 0)
    )
   (send-super :init)
   (setq _camera_action (round __camera_action))
   self)
  (:camera_action
   (&optional __camera_action)
   (if __camera_action (setq _camera_action __camera_action)) _camera_action)
  (:serialization-length
   ()
   (+
    ;; uint8 _camera_action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _camera_action
       (write-byte _camera_action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _camera_action
     (setq _camera_action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::CameraActionControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::CameraActionControlResponse
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

(defclass dji_sdk::CameraActionControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::CameraActionControl :md5sum-) "77629488af3edd3adaa94bf250d692c6")
(setf (get dji_sdk::CameraActionControl :datatype-) "dji_sdk/CameraActionControl")
(setf (get dji_sdk::CameraActionControl :request) dji_sdk::CameraActionControlRequest)
(setf (get dji_sdk::CameraActionControl :response) dji_sdk::CameraActionControlResponse)

(defmethod dji_sdk::CameraActionControlRequest
  (:response () (instance dji_sdk::CameraActionControlResponse :init)))

(setf (get dji_sdk::CameraActionControlRequest :md5sum-) "77629488af3edd3adaa94bf250d692c6")
(setf (get dji_sdk::CameraActionControlRequest :datatype-) "dji_sdk/CameraActionControlRequest")
(setf (get dji_sdk::CameraActionControlRequest :definition-)
      "


uint8 camera_action
---
bool result

")

(setf (get dji_sdk::CameraActionControlResponse :md5sum-) "77629488af3edd3adaa94bf250d692c6")
(setf (get dji_sdk::CameraActionControlResponse :datatype-) "dji_sdk/CameraActionControlResponse")
(setf (get dji_sdk::CameraActionControlResponse :definition-)
      "


uint8 camera_action
---
bool result

")



(provide :dji_sdk/CameraActionControl "77629488af3edd3adaa94bf250d692c6")


