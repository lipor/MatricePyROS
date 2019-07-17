;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::VersionCheck)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'VersionCheck (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::VERSIONCHECK")
  (make-package "DJI_SDK::VERSIONCHECK"))
(unless (find-package "DJI_SDK::VERSIONCHECKREQUEST")
  (make-package "DJI_SDK::VERSIONCHECKREQUEST"))
(unless (find-package "DJI_SDK::VERSIONCHECKRESPONSE")
  (make-package "DJI_SDK::VERSIONCHECKRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::VersionCheckRequest
  :super ros::object
  :slots ())

(defmethod dji_sdk::VersionCheckRequest
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

(defclass dji_sdk::VersionCheckResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::VersionCheckResponse
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

(defclass dji_sdk::VersionCheck
  :super ros::object
  :slots ())

(setf (get dji_sdk::VersionCheck :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::VersionCheck :datatype-) "dji_sdk/VersionCheck")
(setf (get dji_sdk::VersionCheck :request) dji_sdk::VersionCheckRequest)
(setf (get dji_sdk::VersionCheck :response) dji_sdk::VersionCheckResponse)

(defmethod dji_sdk::VersionCheckRequest
  (:response () (instance dji_sdk::VersionCheckResponse :init)))

(setf (get dji_sdk::VersionCheckRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::VersionCheckRequest :datatype-) "dji_sdk/VersionCheckRequest")
(setf (get dji_sdk::VersionCheckRequest :definition-)
      "---
bool result

")

(setf (get dji_sdk::VersionCheckResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_sdk::VersionCheckResponse :datatype-) "dji_sdk/VersionCheckResponse")
(setf (get dji_sdk::VersionCheckResponse :definition-)
      "---
bool result

")



(provide :dji_sdk/VersionCheck "eb13ac1f1354ccecb7941ee8fa2192e8")


