;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionStart)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionStart (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONSTART")
  (make-package "DJI_SDK::MISSIONSTART"))
(unless (find-package "DJI_SDK::MISSIONSTARTREQUEST")
  (make-package "DJI_SDK::MISSIONSTARTREQUEST"))
(unless (find-package "DJI_SDK::MISSIONSTARTRESPONSE")
  (make-package "DJI_SDK::MISSIONSTARTRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionStartRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::MissionStartRequest
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

(defclass dji_sdk::MissionStartResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionStartResponse
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

(defclass dji_sdk::MissionStart
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionStart :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::MissionStart :datatype-) "dji_sdk/MissionStart")
(setf (get dji_sdk::MissionStart :request) dji_sdk::MissionStartRequest)
(setf (get dji_sdk::MissionStart :response) dji_sdk::MissionStartResponse)

(defmethod dji_sdk::MissionStartRequest
  (:response () (instance dji_sdk::MissionStartResponse :init)))

(setf (get dji_sdk::MissionStartRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::MissionStartRequest :datatype-) "dji_sdk/MissionStartRequest")
(setf (get dji_sdk::MissionStartRequest :definition-)
      "---
bool result

")

(setf (get dji_sdk::MissionStartResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::MissionStartResponse :datatype-) "dji_sdk/MissionStartResponse")
(setf (get dji_sdk::MissionStartResponse :definition-)
      "---
bool result

")



(provide :dji_sdk/MissionStart "eb13ac1f1354ccecb7941ee8fa2192e8")


