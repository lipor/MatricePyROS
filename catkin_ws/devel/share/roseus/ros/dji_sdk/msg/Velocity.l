;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::Velocity)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'Velocity (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::VELOCITY")
  (make-package "DJI_SDK::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude Velocity.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dji_sdk::Velocity
  :super ros::object
  :slots (_header _ts _vx _vy _vz _health_flag ))

(defmethod dji_sdk::Velocity
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:health_flag __health_flag) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _health_flag (round __health_flag))
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
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:health_flag
   (&optional __health_flag)
   (if __health_flag (setq _health_flag __health_flag)) _health_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ts
    4
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vz
    4
    ;; uint8 _health_flag
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
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _health_flag
       (write-byte _health_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ts
     (setq _ts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz
     (setq _vz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _health_flag
     (setq _health_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::Velocity :md5sum-) "a89d7216b2636ddc4fc4375ae77dc15c")
(setf (get dji_sdk::Velocity :datatype-) "dji_sdk/Velocity")
(setf (get dji_sdk::Velocity :definition-)
      "Header header
int32 ts
float32 vx
float32 vy
float32 vz
uint8 health_flag

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



(provide :dji_sdk/Velocity "a89d7216b2636ddc4fc4375ae77dc15c")


