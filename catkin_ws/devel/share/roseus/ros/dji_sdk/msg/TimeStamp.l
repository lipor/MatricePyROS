;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::TimeStamp)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'TimeStamp (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::TIMESTAMP")
  (make-package "DJI_SDK::TIMESTAMP"))

(in-package "ROS")
;;//! \htmlinclude TimeStamp.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dji_sdk::TimeStamp
  :super ros::object
  :slots (_header _time _time_ns _sync_flag ))

(defmethod dji_sdk::TimeStamp
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0)
    ((:time_ns __time_ns) 0)
    ((:sync_flag __sync_flag) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (round __time))
   (setq _time_ns (round __time_ns))
   (setq _sync_flag (round __sync_flag))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:time_ns
   (&optional __time_ns)
   (if __time_ns (setq _time_ns __time_ns)) _time_ns)
  (:sync_flag
   (&optional __sync_flag)
   (if __sync_flag (setq _sync_flag __sync_flag)) _sync_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time
    4
    ;; uint32 _time_ns
    4
    ;; uint8 _sync_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time
       (write-long _time s)
     ;; uint32 _time_ns
       (write-long _time_ns s)
     ;; uint8 _sync_flag
       (write-byte _sync_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _time_ns
     (setq _time_ns (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _sync_flag
     (setq _sync_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::TimeStamp :md5sum-) "cdf94dfbb71b3e4aec0ba55884cec090")
(setf (get dji_sdk::TimeStamp :datatype-) "dji_sdk/TimeStamp")
(setf (get dji_sdk::TimeStamp :definition-)
      "Header header

uint32 time
uint32 time_ns
uint8 sync_flag

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



(provide :dji_sdk/TimeStamp "cdf94dfbb71b3e4aec0ba55884cec090")


