;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionHpSetRadius)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionHpSetRadius (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONHPSETRADIUS")
  (make-package "DJI_SDK::MISSIONHPSETRADIUS"))
(unless (find-package "DJI_SDK::MISSIONHPSETRADIUSREQUEST")
  (make-package "DJI_SDK::MISSIONHPSETRADIUSREQUEST"))
(unless (find-package "DJI_SDK::MISSIONHPSETRADIUSRESPONSE")
  (make-package "DJI_SDK::MISSIONHPSETRADIUSRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::MissionHpSetRadiusRequest
  :super ros::object
  :slots (_radius ))

(defmethod dji_sdk::MissionHpSetRadiusRequest
  (:init
   (&key
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _radius (float __radius))
   self)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_sdk::MissionHpSetRadiusResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::MissionHpSetRadiusResponse
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

(defclass dji_sdk::MissionHpSetRadius
  :super ros::object
  :slots ())

(setf (get dji_sdk::MissionHpSetRadius :md5sum-) "44e997bb8d1a50ef179a59895af1c426")
(setf (get dji_sdk::MissionHpSetRadius :datatype-) "dji_sdk/MissionHpSetRadius")
(setf (get dji_sdk::MissionHpSetRadius :request) dji_sdk::MissionHpSetRadiusRequest)
(setf (get dji_sdk::MissionHpSetRadius :response) dji_sdk::MissionHpSetRadiusResponse)

(defmethod dji_sdk::MissionHpSetRadiusRequest
  (:response () (instance dji_sdk::MissionHpSetRadiusResponse :init)))

(setf (get dji_sdk::MissionHpSetRadiusRequest :md5sum-) "44e997bb8d1a50ef179a59895af1c426")
(setf (get dji_sdk::MissionHpSetRadiusRequest :datatype-) "dji_sdk/MissionHpSetRadiusRequest")
(setf (get dji_sdk::MissionHpSetRadiusRequest :definition-)
      "float32 radius
---
bool result

")

(setf (get dji_sdk::MissionHpSetRadiusResponse :md5sum-) "44e997bb8d1a50ef179a59895af1c426")
(setf (get dji_sdk::MissionHpSetRadiusResponse :datatype-) "dji_sdk/MissionHpSetRadiusResponse")
(setf (get dji_sdk::MissionHpSetRadiusResponse :definition-)
      "float32 radius
---
bool result

")



(provide :dji_sdk/MissionHpSetRadius "44e997bb8d1a50ef179a59895af1c426")


