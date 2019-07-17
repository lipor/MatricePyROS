;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::AttitudeQuaternion)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'AttitudeQuaternion (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::ATTITUDEQUATERNION")
  (make-package "DJI_SDK::ATTITUDEQUATERNION"))

(in-package "ROS")
;;//! \htmlinclude AttitudeQuaternion.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dji_sdk::AttitudeQuaternion
  :super ros::object
  :slots (_header _ts _q0 _q1 _q2 _q3 _wx _wy _wz ))

(defmethod dji_sdk::AttitudeQuaternion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:q0 __q0) 0.0)
    ((:q1 __q1) 0.0)
    ((:q2 __q2) 0.0)
    ((:q3 __q3) 0.0)
    ((:wx __wx) 0.0)
    ((:wy __wy) 0.0)
    ((:wz __wz) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _q0 (float __q0))
   (setq _q1 (float __q1))
   (setq _q2 (float __q2))
   (setq _q3 (float __q3))
   (setq _wx (float __wx))
   (setq _wy (float __wy))
   (setq _wz (float __wz))
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
  (:q0
   (&optional __q0)
   (if __q0 (setq _q0 __q0)) _q0)
  (:q1
   (&optional __q1)
   (if __q1 (setq _q1 __q1)) _q1)
  (:q2
   (&optional __q2)
   (if __q2 (setq _q2 __q2)) _q2)
  (:q3
   (&optional __q3)
   (if __q3 (setq _q3 __q3)) _q3)
  (:wx
   (&optional __wx)
   (if __wx (setq _wx __wx)) _wx)
  (:wy
   (&optional __wy)
   (if __wy (setq _wy __wy)) _wy)
  (:wz
   (&optional __wz)
   (if __wz (setq _wz __wz)) _wz)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ts
    4
    ;; float32 _q0
    4
    ;; float32 _q1
    4
    ;; float32 _q2
    4
    ;; float32 _q3
    4
    ;; float32 _wx
    4
    ;; float32 _wy
    4
    ;; float32 _wz
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
     ;; float32 _q0
       (sys::poke _q0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _q1
       (sys::poke _q1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _q2
       (sys::poke _q2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _q3
       (sys::poke _q3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wx
       (sys::poke _wx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wy
       (sys::poke _wy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wz
       (sys::poke _wz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ts
     (setq _ts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _q0
     (setq _q0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _q1
     (setq _q1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _q2
     (setq _q2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _q3
     (setq _q3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wx
     (setq _wx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wy
     (setq _wy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wz
     (setq _wz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_sdk::AttitudeQuaternion :md5sum-) "999d24c7cb273aa4f2c6044f85cac84c")
(setf (get dji_sdk::AttitudeQuaternion :datatype-) "dji_sdk/AttitudeQuaternion")
(setf (get dji_sdk::AttitudeQuaternion :definition-)
      "# The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0).
Header header
int32 ts
# Quaternion component
float32 q0
float32 q1
float32 q2
float32 q3
# Angular speed (rad/s)
float32 wx
float32 wy
float32 wz

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



(provide :dji_sdk/AttitudeQuaternion "999d24c7cb273aa4f2c6044f85cac84c")


