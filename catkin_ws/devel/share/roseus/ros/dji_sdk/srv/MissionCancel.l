;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionCancel)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionCancel (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONCANCEL")
  (make-package "DJI_SDK::MISSIONCANCEL"))
(unless (find-package "DJI_SDK::MISSIONCANCELREQUEST")
  (make-package "DJI_SDK::MISSIONCANCELREQUEST"))
(unless (find-package "DJI_SDK::MISSIONCANCELRESPONSE")
  (make-package "DJI_SDK::MISSIONCANCELRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionCancelRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::MissionCancelRequest
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

(defclass dji_sdk::MissionCancelResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionCancelResponse
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

(defclass dji_sdk::MissionCancel
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionCancel :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::MissionCancel :datatype-) "dji_sdk/MissionCancel")
(setf (get dji_sdk::MissionCancel :request) dji_sdk::MissionCancelRequest)
(setf (get dji_sdk::MissionCancel :response) dji_sdk::MissionCancelResponse)

(defmethod dji_sdk::MissionCancelRequest
  (:response () (instance dji_sdk::MissionCancelResponse :init)))

(setf (get dji_sdk::MissionCancelRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::MissionCancelRequest :datatype-) "dji_sdk/MissionCancelRequest")
(setf (get dji_sdk::MissionCancelRequest :definition-)
      "---
bool result

")

(setf (get dji_sdk::MissionCancelResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::MissionCancelResponse :datatype-) "dji_sdk/MissionCancelResponse")
(setf (get dji_sdk::MissionCancelResponse :definition-)
      "---
bool result

")



(provide :dji_sdk/MissionCancel "eb13ac1f1354ccecb7941ee8fa2192e8")


