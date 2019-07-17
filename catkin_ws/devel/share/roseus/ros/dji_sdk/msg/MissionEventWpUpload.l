;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionEventWpUpload)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionEventWpUpload (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONEVENTWPUPLOAD")
  (make-package "DJI_SDK::MISSIONEVENTWPUPLOAD"))

(in-package "ROS")
;;//! \htmlinclude MissionEventWpUpload.msg.html


(defclass dji_sdk::MissionEventWpUpload
  :super ros::object
  :slots (_incident_type _mission_valid _estimated_runtime ))

(defmethod dji_sdk::MissionEventWpUpload
  (:init
   (&key
    ((:incident_type __incident_type) 0)
    ((:mission_valid __mission_valid) 0)
    ((:estimated_runtime __estimated_runtime) 0)
    )
   (send-super :init)
   (setq _incident_type (round __incident_type))
   (setq _mission_valid (round __mission_valid))
   (setq _estimated_runtime (round __estimated_runtime))
   self)
  (:incident_type
   (&optional __incident_type)
   (if __incident_type (setq _incident_type __incident_type)) _incident_type)
  (:mission_valid
   (&optional __mission_valid)
   (if __mission_valid (setq _mission_valid __mission_valid)) _mission_valid)
  (:estimated_runtime
   (&optional __estimated_runtime)
   (if __estimated_runtime (setq _estimated_runtime __estimated_runtime)) _estimated_runtime)
  (:serialization-length
   ()
   (+
    ;; uint8 _incident_type
    1
    ;; uint8 _mission_valid
    1
    ;; uint16 _estimated_runtime
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _incident_type
       (write-byte _incident_type s)
     ;; uint8 _mission_valid
       (write-byte _mission_valid s)
     ;; uint16 _estimated_runtime
       (write-word _estimated_runtime s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _incident_type
     (setq _incident_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mission_valid
     (setq _mission_valid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _estimated_runtime
     (setq _estimated_runtime (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dji_sdk::MissionEventWpUpload :md5sum-) "8bbd22d7335594c91d2500ae8d41ab36")
(setf (get dji_sdk::MissionEventWpUpload :datatype-) "dji_sdk/MissionEventWpUpload")
(setf (get dji_sdk::MissionEventWpUpload :definition-)
      "uint8 incident_type
uint8 mission_valid
uint16 estimated_runtime

")



(provide :dji_sdk/MissionEventWpUpload "8bbd22d7335594c91d2500ae8d41ab36")


