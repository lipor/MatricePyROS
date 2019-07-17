;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionHpUpload)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionHpUpload (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONHPUPLOAD")
  (make-package "DJI_SDK::MISSIONHPUPLOAD"))
(unless (find-package "DJI_SDK::MISSIONHPUPLOADREQUEST")
  (make-package "DJI_SDK::MISSIONHPUPLOADREQUEST"))
(unless (find-package "DJI_SDK::MISSIONHPUPLOADRESPONSE")
  (make-package "DJI_SDK::MISSIONHPUPLOADRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionHpUploadRequest
  :super ros::object
  :slots (_hotpoint_task ))

(defmethod dji_sdk::MissionHpUploadRequest
  (:init
   (&key
    ((:hotpoint_task __hotpoint_task) (instance dji_sdk::MissionHotpointTask :init))
    )
   (send-super :init)
   (setq _hotpoint_task __hotpoint_task)
   self)
  (:hotpoint_task
   (&rest __hotpoint_task)
   (if (keywordp (car __hotpoint_task))
       (send* _hotpoint_task __hotpoint_task)
     (progn
       (if __hotpoint_task (setq _hotpoint_task (car __hotpoint_task)))
       _hotpoint_task)))
  (:serialization-length
   ()
   (+
    ;; dji_sdk/MissionHotpointTask _hotpoint_task
    (send _hotpoint_task :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_sdk/MissionHotpointTask _hotpoint_task
       (send _hotpoint_task :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_sdk/MissionHotpointTask _hotpoint_task
     (send _hotpoint_task :deserialize buf ptr-) (incf ptr- (send _hotpoint_task :serialization-length))
   ;;
   self)
  )

(defclass dji_sdk::MissionHpUploadResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionHpUploadResponse
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

(defclass dji_sdk::MissionHpUpload
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionHpUpload :md5sum-) "d057d61e861a72611b7918cfd8a98e4a")
(setf (get dji_sdk::MissionHpUpload :datatype-) "dji_sdk/MissionHpUpload")
(setf (get dji_sdk::MissionHpUpload :request) dji_sdk::MissionHpUploadRequest)
(setf (get dji_sdk::MissionHpUpload :response) dji_sdk::MissionHpUploadResponse)

(defmethod dji_sdk::MissionHpUploadRequest
  (:response () (instance dji_sdk::MissionHpUploadResponse :init)))

(setf (get dji_sdk::MissionHpUploadRequest :md5sum-) "d057d61e861a72611b7918cfd8a98e4a")
(setf (get dji_sdk::MissionHpUploadRequest :datatype-) "dji_sdk/MissionHpUploadRequest")
(setf (get dji_sdk::MissionHpUploadRequest :definition-)
      "MissionHotpointTask hotpoint_task

================================================================================
MSG: dji_sdk/MissionHotpointTask
float64 latitude
float64 longitude
float64 altitude
float64 radius
float32 angular_speed
uint8 is_clockwise
uint8 start_point
uint8 yaw_mode
---
bool result

")

(setf (get dji_sdk::MissionHpUploadResponse :md5sum-) "d057d61e861a72611b7918cfd8a98e4a")
(setf (get dji_sdk::MissionHpUploadResponse :datatype-) "dji_sdk/MissionHpUploadResponse")
(setf (get dji_sdk::MissionHpUploadResponse :definition-)
      "MissionHotpointTask hotpoint_task

================================================================================
MSG: dji_sdk/MissionHotpointTask
float64 latitude
float64 longitude
float64 altitude
float64 radius
float32 angular_speed
uint8 is_clockwise
uint8 start_point
uint8 yaw_mode
---
bool result

")



(provide :dji_sdk/MissionHpUpload "d057d61e861a72611b7918cfd8a98e4a")


