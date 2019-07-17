;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::Gimbal)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'Gimbal (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::GIMBAL")
  (make-package "DJI_SDK::GIMBAL"))

(in-package "ROS")
;;//! \htmlinclude Gimbal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dji_sdk::Gimbal
  :super ros::object
  :slots (_header _ts _pitch _yaw _roll ))

(defmethod dji_sdk::Gimbal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:roll __roll) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _roll (float __roll))
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
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ts
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _roll
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
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ts
     (setq _ts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_sdk::Gimbal :md5sum-) "a9476856cbd230f684e89771f23da609")
(setf (get dji_sdk::Gimbal :datatype-) "dji_sdk/Gimbal")
(setf (get dji_sdk::Gimbal :definition-)
      "Header header
int32 ts
float32 pitch
float32 yaw
float32 roll

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



(provide :dji_sdk/Gimbal "a9476856cbd230f684e89771f23da609")


