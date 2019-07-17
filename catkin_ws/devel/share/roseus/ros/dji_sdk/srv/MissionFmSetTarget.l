;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionFmSetTarget)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionFmSetTarget (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONFMSETTARGET")
  (make-package "DJI_SDK::MISSIONFMSETTARGET"))
(unless (find-package "DJI_SDK::MISSIONFMSETTARGETREQUEST")
  (make-package "DJI_SDK::MISSIONFMSETTARGETREQUEST"))
(unless (find-package "DJI_SDK::MISSIONFMSETTARGETRESPONSE")
  (make-package "DJI_SDK::MISSIONFMSETTARGETRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionFmSetTargetRequest
  :super ros::object
  :slots (_followme_target ))

(defmethod dji_sdk::MissionFmSetTargetRequest
  (:init
   (&key
    ((:followme_target __followme_target) (instance dji_sdk::MissionFollowmeTarget :init))
    )
   (send-super :init)
   (setq _followme_target __followme_target)
   self)
  (:followme_target
   (&rest __followme_target)
   (if (keywordp (car __followme_target))
       (send* _followme_target __followme_target)
     (progn
       (if __followme_target (setq _followme_target (car __followme_target)))
       _followme_target)))
  (:serialization-length
   ()
   (+
    ;; dji_sdk/MissionFollowmeTarget _followme_target
    (send _followme_target :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_sdk/MissionFollowmeTarget _followme_target
       (send _followme_target :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_sdk/MissionFollowmeTarget _followme_target
     (send _followme_target :deserialize buf ptr-) (incf ptr- (send _followme_target :serialization-length))
   ;;
   self)
  )

(defclass dji_sdk::MissionFmSetTargetResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionFmSetTargetResponse
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

(defclass dji_sdk::MissionFmSetTarget
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionFmSetTarget :md5sum-) "9ee16cc78eb2fc59f786dcdc9263f07f")
(setf (get dji_sdk::MissionFmSetTarget :datatype-) "dji_sdk/MissionFmSetTarget")
(setf (get dji_sdk::MissionFmSetTarget :request) dji_sdk::MissionFmSetTargetRequest)
(setf (get dji_sdk::MissionFmSetTarget :response) dji_sdk::MissionFmSetTargetResponse)

(defmethod dji_sdk::MissionFmSetTargetRequest
  (:response () (instance dji_sdk::MissionFmSetTargetResponse :init)))

(setf (get dji_sdk::MissionFmSetTargetRequest :md5sum-) "9ee16cc78eb2fc59f786dcdc9263f07f")
(setf (get dji_sdk::MissionFmSetTargetRequest :datatype-) "dji_sdk/MissionFmSetTargetRequest")
(setf (get dji_sdk::MissionFmSetTargetRequest :definition-)
      "MissionFollowmeTarget followme_target

================================================================================
MSG: dji_sdk/MissionFollowmeTarget
float64 latitude
float64 longitude
uint16 altitude
---
bool result

")

(setf (get dji_sdk::MissionFmSetTargetResponse :md5sum-) "9ee16cc78eb2fc59f786dcdc9263f07f")
(setf (get dji_sdk::MissionFmSetTargetResponse :datatype-) "dji_sdk/MissionFmSetTargetResponse")
(setf (get dji_sdk::MissionFmSetTargetResponse :definition-)
      "MissionFollowmeTarget followme_target

================================================================================
MSG: dji_sdk/MissionFollowmeTarget
float64 latitude
float64 longitude
uint16 altitude
---
bool result

")



(provide :dji_sdk/MissionFmSetTarget "9ee16cc78eb2fc59f786dcdc9263f07f")


