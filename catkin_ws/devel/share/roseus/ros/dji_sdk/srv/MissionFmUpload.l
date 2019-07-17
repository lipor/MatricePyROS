;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionFmUpload)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionFmUpload (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONFMUPLOAD")
  (make-package "DJI_SDK::MISSIONFMUPLOAD"))
(unless (find-package "DJI_SDK::MISSIONFMUPLOADREQUEST")
  (make-package "DJI_SDK::MISSIONFMUPLOADREQUEST"))
(unless (find-package "DJI_SDK::MISSIONFMUPLOADRESPONSE")
  (make-package "DJI_SDK::MISSIONFMUPLOADRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionFmUploadRequest
  :super ros::object
  :slots (_followme_task ))

(defmethod dji_sdk::MissionFmUploadRequest
  (:init
   (&key
    ((:followme_task __followme_task) (instance dji_sdk::MissionFollowmeTask :init))
    )
   (send-super :init)
   (setq _followme_task __followme_task)
   self)
  (:followme_task
   (&rest __followme_task)
   (if (keywordp (car __followme_task))
       (send* _followme_task __followme_task)
     (progn
       (if __followme_task (setq _followme_task (car __followme_task)))
       _followme_task)))
  (:serialization-length
   ()
   (+
    ;; dji_sdk/MissionFollowmeTask _followme_task
    (send _followme_task :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_sdk/MissionFollowmeTask _followme_task
       (send _followme_task :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_sdk/MissionFollowmeTask _followme_task
     (send _followme_task :deserialize buf ptr-) (incf ptr- (send _followme_task :serialization-length))
   ;;
   self)
  )

(defclass dji_sdk::MissionFmUploadResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionFmUploadResponse
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

(defclass dji_sdk::MissionFmUpload
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionFmUpload :md5sum-) "10ed872d3d019b452e558098ab5f5224")
(setf (get dji_sdk::MissionFmUpload :datatype-) "dji_sdk/MissionFmUpload")
(setf (get dji_sdk::MissionFmUpload :request) dji_sdk::MissionFmUploadRequest)
(setf (get dji_sdk::MissionFmUpload :response) dji_sdk::MissionFmUploadResponse)

(defmethod dji_sdk::MissionFmUploadRequest
  (:response () (instance dji_sdk::MissionFmUploadResponse :init)))

(setf (get dji_sdk::MissionFmUploadRequest :md5sum-) "10ed872d3d019b452e558098ab5f5224")
(setf (get dji_sdk::MissionFmUploadRequest :datatype-) "dji_sdk/MissionFmUploadRequest")
(setf (get dji_sdk::MissionFmUploadRequest :definition-)
      "MissionFollowmeTask followme_task

================================================================================
MSG: dji_sdk/MissionFollowmeTask
uint8 mode
uint8 yaw_mode
float64 initial_latitude
float64 initial_longitude
uint16 initial_altitude
uint8 sensitivity
---
bool result

")

(setf (get dji_sdk::MissionFmUploadResponse :md5sum-) "10ed872d3d019b452e558098ab5f5224")
(setf (get dji_sdk::MissionFmUploadResponse :datatype-) "dji_sdk/MissionFmUploadResponse")
(setf (get dji_sdk::MissionFmUploadResponse :definition-)
      "MissionFollowmeTask followme_task

================================================================================
MSG: dji_sdk/MissionFollowmeTask
uint8 mode
uint8 yaw_mode
float64 initial_latitude
float64 initial_longitude
uint16 initial_altitude
uint8 sensitivity
---
bool result

")



(provide :dji_sdk/MissionFmUpload "10ed872d3d019b452e558098ab5f5224")


