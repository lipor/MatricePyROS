;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionEventWpAction)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionEventWpAction (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONEVENTWPACTION")
  (make-package "DJI_SDK::MISSIONEVENTWPACTION"))

(in-package "ROS")
;;//! \htmlinclude MissionEventWpAction.msg.html


(defclass dji_sdk::MissionEventWpAction
  :super ros::object
  :slots (_incident_type _repeat ))

(defmethod dji_sdk::MissionEventWpAction
  (:init
   (&key
    ((:incident_type __incident_type) 0)
    ((:repeat __repeat) 0)
    )
   (send-super :init)
   (setq _incident_type (round __incident_type))
   (setq _repeat (round __repeat))
   self)
  (:incident_type
   (&optional __incident_type)
   (if __incident_type (setq _incident_type __incident_type)) _incident_type)
  (:repeat
   (&optional __repeat)
   (if __repeat (setq _repeat __repeat)) _repeat)
  (:serialization-length
   ()
   (+
    ;; uint8 _incident_type
    1
    ;; uint8 _repeat
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _incident_type
       (write-byte _incident_type s)
     ;; uint8 _repeat
       (write-byte _repeat s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _incident_type
     (setq _incident_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _repeat
     (setq _repeat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::MissionEventWpAction :md5sum-) "feb2e4aeb62859a1aee7828f09a4a6a3")
(setf (get dji_sdk::MissionEventWpAction :datatype-) "dji_sdk/MissionEventWpAction")
(setf (get dji_sdk::MissionEventWpAction :definition-)
      "uint8 incident_type
uint8 repeat

")



(provide :dji_sdk/MissionEventWpAction "feb2e4aeb62859a1aee7828f09a4a6a3")


