;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::Compass)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'Compass (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::COMPASS")
  (make-package "DJI_SDK::COMPASS"))

(in-package "ROS")
;;//! \htmlinclude Compass.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dji_sdk::Compass
  :super ros::object
  :slots (_header _ts _x _y _z ))

(defmethod dji_sdk::Compass
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ts
   (&optional __ts)
   (if __ts (setq _ts __ts)) _ts)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ts
    4
    ;; int8 _x
    1
    ;; int8 _y
    1
    ;; int8 _z
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _ts
       (write-long _ts s)
     ;; int8 _x
       (write-byte _x s)
     ;; int8 _y
       (write-byte _y s)
     ;; int8 _z
       (write-byte _z s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ts
     (setq _ts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _x
     (setq _x (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _x 127) (setq _x (- _x 256)))
   ;; int8 _y
     (setq _y (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _y 127) (setq _y (- _y 256)))
   ;; int8 _z
     (setq _z (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _z 127) (setq _z (- _z 256)))
   ;;
   self)
  )

(setf (get dji_sdk::Compass :md5sum-) "b9095ec8234a90e0f1e272a9b3133790")
(setf (get dji_sdk::Compass :datatype-) "dji_sdk/Compass")
(setf (get dji_sdk::Compass :definition-)
      "Header header
int32 ts
int8 x
int8 y
int8 z

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :dji_sdk/Compass "b9095ec8234a90e0f1e272a9b3133790")


