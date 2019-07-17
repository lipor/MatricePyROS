;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::RCChannels)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'RCChannels (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::RCCHANNELS")
  (make-package "DJI_SDK::RCCHANNELS"))

(in-package "ROS")
;;//! \htmlinclude RCChannels.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dji_sdk::RCChannels
  :super ros::object
  :slots (_header _ts _roll _pitch _yaw _throttle _mode _gear ))

(defmethod dji_sdk::RCChannels
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:throttle __throttle) 0.0)
    ((:mode __mode) 0.0)
    ((:gear __gear) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _throttle (float __throttle))
   (setq _mode (float __mode))
   (setq _gear (float __gear))
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
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ts
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _throttle
    4
    ;; float32 _mode
    4
    ;; float32 _gear
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _ts
       (write-long _ts s)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mode
       (sys::poke _mode (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gear
       (sys::poke _gear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ts
     (setq _ts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mode
     (setq _mode (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gear
     (setq _gear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_sdk::RCChannels :md5sum-) "6c42f5c30aa4b241b68bd1be86dd3fec")
(setf (get dji_sdk::RCChannels :datatype-) "dji_sdk/RCChannels")
(setf (get dji_sdk::RCChannels :definition-)
      "# RC Map
#
#  mode:
#
# +8000 <--->  0  <---> -8000
#  API  <---> ATT <--->  POS
#
# CH3(throttle) +10000            CH1(pitch) +10000
#             ^                            ^
#             |                            |                  / -10000
#  CH2(yaw)   |                CH0(roll)   |                 /
# -10000 <-----------> +10000 -10000 <-----------> +10000   H(gear)
#             |                            |                 \\
#             |                            |                  \\ -4545
#             V                            V
#          -10000                       -10000
#
Header header
int32 ts
float32 roll
float32 pitch
float32 yaw
float32 throttle
float32 mode
float32 gear

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



(provide :dji_sdk/RCChannels "6c42f5c30aa4b241b68bd1be86dd3fec")


