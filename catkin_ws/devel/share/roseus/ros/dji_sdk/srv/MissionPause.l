;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionPause)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionPause (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONPAUSE")
  (make-package "DJI_SDK::MISSIONPAUSE"))
(unless (find-package "DJI_SDK::MISSIONPAUSEREQUEST")
  (make-package "DJI_SDK::MISSIONPAUSEREQUEST"))
(unless (find-package "DJI_SDK::MISSIONPAUSERESPONSE")
  (make-package "DJI_SDK::MISSIONPAUSERESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionPauseRequest
  :super ros::object
  :slots (_pause ))

(defmethod dji_sdk::MissionPauseRequest
  (:init
   (&key
    ((:pause __pause) 0)
    )
   (send-super :init)
   (setq _pause (round __pause))
   self)
  (:pause
   (&optional __pause)
   (if __pause (setq _pause __pause)) _pause)
  (:serialization-length
   ()
   (+
    ;; uint8 _pause
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pause
       (write-byte _pause s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pause
     (setq _pause (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::MissionPauseResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionPauseResponse
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

(defclass dji_sdk::MissionPause
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionPause :md5sum-) "c18266d07513b130ae375b3cb5d653dc")
(setf (get dji_sdk::MissionPause :datatype-) "dji_sdk/MissionPause")
(setf (get dji_sdk::MissionPause :request) dji_sdk::MissionPauseRequest)
(setf (get dji_sdk::MissionPause :response) dji_sdk::MissionPauseResponse)

(defmethod dji_sdk::MissionPauseRequest
  (:response () (instance dji_sdk::MissionPauseResponse :init)))

(setf (get dji_sdk::MissionPauseRequest :md5sum-) "c18266d07513b130ae375b3cb5d653dc")
(setf (get dji_sdk::MissionPauseRequest :datatype-) "dji_sdk/MissionPauseRequest")
(setf (get dji_sdk::MissionPauseRequest :definition-)
      "uint8 pause
---
bool result

")

(setf (get dji_sdk::MissionPauseResponse :md5sum-) "c18266d07513b130ae375b3cb5d653dc")
(setf (get dji_sdk::MissionPauseResponse :datatype-) "dji_sdk/MissionPauseResponse")
(setf (get dji_sdk::MissionPauseResponse :definition-)
      "uint8 pause
---
bool result

")



(provide :dji_sdk/MissionPause "c18266d07513b130ae375b3cb5d653dc")


