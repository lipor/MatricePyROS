;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::GlobalPosition)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'GlobalPosition (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::GLOBALPOSITION")
  (make-package "DJI_SDK::GLOBALPOSITION"))

(in-package "ROS")
;;//! \htmlinclude GlobalPosition.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dji_sdk::GlobalPosition
  :super ros::object
  :slots (_header _ts _latitude _longitude _altitude _height _health ))

(defmethod dji_sdk::GlobalPosition
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:height __height) 0.0)
    ((:health __health) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _height (float __height))
   (setq _health (round __health))
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
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:health
   (&optional __health)
   (if __health (setq _health __health)) _health)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ts
    4
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float32 _altitude
    4
    ;; float32 _height
    4
    ;; int8 _health
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
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _health
       (write-byte _health s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ts
     (setq _ts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _health
     (setq _health (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _health 127) (setq _health (- _health 256)))
   ;;
   self)
  )

(setf (get dji_sdk::GlobalPosition :md5sum-) "10784f0f63ab6f41e201fee714fabb2a")
(setf (get dji_sdk::GlobalPosition :datatype-) "dji_sdk/GlobalPosition")
(setf (get dji_sdk::GlobalPosition :definition-)
      "Header header
int32 ts
#latitude is in angle
float64 latitude
#longitude is in angle
float64 longitude
float32 altitude
float32 height
#reliablity [0,5]
int8 health 


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



(provide :dji_sdk/GlobalPosition "10784f0f63ab6f41e201fee714fabb2a")


