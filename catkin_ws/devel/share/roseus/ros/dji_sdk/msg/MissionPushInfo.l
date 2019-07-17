;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::MissionPushInfo)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'MissionPushInfo (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::MISSIONPUSHINFO")
  (make-package "DJI_SDK::MISSIONPUSHINFO"))

(in-package "ROS")
;;//! \htmlinclude MissionPushInfo.msg.html


(defclass dji_sdk::MissionPushInfo
  :super ros::object
  :slots (_type _data_1 _data_2 _data_3 _data_4 _data_5 ))

(defmethod dji_sdk::MissionPushInfo
  (:init
   (&key
    ((:type __type) 0)
    ((:data_1 __data_1) 0)
    ((:data_2 __data_2) 0)
    ((:data_3 __data_3) 0)
    ((:data_4 __data_4) 0)
    ((:data_5 __data_5) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _data_1 (round __data_1))
   (setq _data_2 (round __data_2))
   (setq _data_3 (round __data_3))
   (setq _data_4 (round __data_4))
   (setq _data_5 (round __data_5))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:data_1
   (&optional __data_1)
   (if __data_1 (setq _data_1 __data_1)) _data_1)
  (:data_2
   (&optional __data_2)
   (if __data_2 (setq _data_2 __data_2)) _data_2)
  (:data_3
   (&optional __data_3)
   (if __data_3 (setq _data_3 __data_3)) _data_3)
  (:data_4
   (&optional __data_4)
   (if __data_4 (setq _data_4 __data_4)) _data_4)
  (:data_5
   (&optional __data_5)
   (if __data_5 (setq _data_5 __data_5)) _data_5)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; uint8 _data_1
    1
    ;; uint8 _data_2
    1
    ;; uint8 _data_3
    1
    ;; uint8 _data_4
    1
    ;; uint8 _data_5
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _data_1
       (write-byte _data_1 s)
     ;; uint8 _data_2
       (write-byte _data_2 s)
     ;; uint8 _data_3
       (write-byte _data_3 s)
     ;; uint8 _data_4
       (write-byte _data_4 s)
     ;; uint8 _data_5
       (write-byte _data_5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _data_1
     (setq _data_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _data_2
     (setq _data_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _data_3
     (setq _data_3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _data_4
     (setq _data_4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _data_5
     (setq _data_5 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::MissionPushInfo :md5sum-) "a520776ca6060b527ddc1be33a700532")
(setf (get dji_sdk::MissionPushInfo :datatype-) "dji_sdk/MissionPushInfo")
(setf (get dji_sdk::MissionPushInfo :definition-)
      "uint8 type
uint8 data_1
uint8 data_2
uint8 data_3
uint8 data_4
uint8 data_5

")



(provide :dji_sdk/MissionPushInfo "a520776ca6060b527ddc1be33a700532")


