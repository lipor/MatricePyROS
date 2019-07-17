;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionStatusFollowme)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionStatusFollowme (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONSTATUSFOLLOWME")
  (make-package "DJI_SDK::MISSIONSTATUSFOLLOWME"))

(in-package "ROS")
;;//! \htmlinclude MissionStatusFollowme.msg.html


(defclass dji_sdk::MissionStatusFollowme
  :super ros::object
  :slots (_mission_type ))

(defmethod dji_sdk::MissionStatusFollowme
  (:init
   (&key
    ((:mission_type __mission_type) 0)
    )
   (send-super :init)
   (setq _mission_type (round __mission_type))
   self)
  (:mission_type
   (&optional __mission_type)
   (if __mission_type (setq _mission_type __mission_type)) _mission_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _mission_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mission_type
       (write-byte _mission_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mission_type
     (setq _mission_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::MissionStatusFollowme :md5sum-) "917010b744881889ec912637e401b269")
(setf (get dji_sdk::MissionStatusFollowme :datatype-) "dji_sdk/MissionStatusFollowme")
(setf (get dji_sdk::MissionStatusFollowme :definition-)
      "uint8 mission_type

")



(provide :dji_sdk/MissionStatusFollowme "917010b744881889ec912637e401b269")


