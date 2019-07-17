;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionHpDownload)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionHpDownload (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONHPDOWNLOAD")
  (make-package "DJI_SDK::MISSIONHPDOWNLOAD"))
(unless (find-package "DJI_SDK::MISSIONHPDOWNLOADREQUEST")
  (make-package "DJI_SDK::MISSIONHPDOWNLOADREQUEST"))
(unless (find-package "DJI_SDK::MISSIONHPDOWNLOADRESPONSE")
  (make-package "DJI_SDK::MISSIONHPDOWNLOADRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionHpDownloadRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::MissionHpDownloadRequest
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

(defclass dji_sdk::MissionHpDownloadResponse
  :super ros::object
  :slots (_hotpoint_task ))

(defmethod dji_sdk::MissionHpDownloadResponse
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

(defclass dji_sdk::MissionHpDownload
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionHpDownload :md5sum-) "e36e66ca170c4d03ee023ad56c6bb5a0")
(setf (get dji_sdk::MissionHpDownload :datatype-) "dji_sdk/MissionHpDownload")
(setf (get dji_sdk::MissionHpDownload :request) dji_sdk::MissionHpDownloadRequest)
(setf (get dji_sdk::MissionHpDownload :response) dji_sdk::MissionHpDownloadResponse)

(defmethod dji_sdk::MissionHpDownloadRequest
  (:response () (instance dji_sdk::MissionHpDownloadResponse :init)))

(setf (get dji_sdk::MissionHpDownloadRequest :md5sum-) "e36e66ca170c4d03ee023ad56c6bb5a0")
(setf (get dji_sdk::MissionHpDownloadRequest :datatype-) "dji_sdk/MissionHpDownloadRequest")
(setf (get dji_sdk::MissionHpDownloadRequest :definition-)
      "---
MissionHotpointTask hotpoint_task


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
")

(setf (get dji_sdk::MissionHpDownloadResponse :md5sum-) "e36e66ca170c4d03ee023ad56c6bb5a0")
(setf (get dji_sdk::MissionHpDownloadResponse :datatype-) "dji_sdk/MissionHpDownloadResponse")
(setf (get dji_sdk::MissionHpDownloadResponse :definition-)
      "---
MissionHotpointTask hotpoint_task


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
")



(provide :dji_sdk/MissionHpDownload "e36e66ca170c4d03ee023ad56c6bb5a0")


