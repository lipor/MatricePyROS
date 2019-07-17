;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionHpResetYaw)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionHpResetYaw (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONHPRESETYAW")
  (make-package "DJI_SDK::MISSIONHPRESETYAW"))
(unless (find-package "DJI_SDK::MISSIONHPRESETYAWREQUEST")
  (make-package "DJI_SDK::MISSIONHPRESETYAWREQUEST"))
(unless (find-package "DJI_SDK::MISSIONHPRESETYAWRESPONSE")
  (make-package "DJI_SDK::MISSIONHPRESETYAWRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionHpResetYawRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::MissionHpResetYawRequest
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

(defclass dji_sdk::MissionHpResetYawResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionHpResetYawResponse
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

(defclass dji_sdk::MissionHpResetYaw
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionHpResetYaw :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::MissionHpResetYaw :datatype-) "dji_sdk/MissionHpResetYaw")
(setf (get dji_sdk::MissionHpResetYaw :request) dji_sdk::MissionHpResetYawRequest)
(setf (get dji_sdk::MissionHpResetYaw :response) dji_sdk::MissionHpResetYawResponse)

(defmethod dji_sdk::MissionHpResetYawRequest
  (:response () (instance dji_sdk::MissionHpResetYawResponse :init)))

(setf (get dji_sdk::MissionHpResetYawRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::MissionHpResetYawRequest :datatype-) "dji_sdk/MissionHpResetYawRequest")
(setf (get dji_sdk::MissionHpResetYawRequest :definition-)
      "---
bool result

")

(setf (get dji_sdk::MissionHpResetYawResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::MissionHpResetYawResponse :datatype-) "dji_sdk/MissionHpResetYawResponse")
(setf (get dji_sdk::MissionHpResetYawResponse :definition-)
      "---
bool result

")



(provide :dji_sdk/MissionHpResetYaw "eb13ac1f1354ccecb7941ee8fa2192e8")


