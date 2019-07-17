;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::A3RTK)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'A3RTK (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::A3RTK")
  (make-package "DJI_SDK::A3RTK"))

(in-package "ROS")
;;//! \htmlinclude A3RTK.msg.html


(defclass dji_sdk::A3RTK
  :super ros::object
  :slots (_date _time _longitude_RTK _latitude_RTK _height_above_sea_RTK _velocity_north _velocity_east _velocity_ground _yaw _position_flag _yaw_flag ))

(defmethod dji_sdk::A3RTK
  (:init
   (&key
    ((:date __date) 0)
    ((:time __time) 0)
    ((:longitude_RTK __longitude_RTK) 0.0)
    ((:latitude_RTK __latitude_RTK) 0.0)
    ((:height_above_sea_RTK __height_above_sea_RTK) 0.0)
    ((:velocity_north __velocity_north) 0.0)
    ((:velocity_east __velocity_east) 0.0)
    ((:velocity_ground __velocity_ground) 0.0)
    ((:yaw __yaw) 0)
    ((:position_flag __position_flag) 0)
    ((:yaw_flag __yaw_flag) 0)
    )
   (send-super :init)
   (setq _date (round __date))
   (setq _time (round __time))
   (setq _longitude_RTK (float __longitude_RTK))
   (setq _latitude_RTK (float __latitude_RTK))
   (setq _height_above_sea_RTK (float __height_above_sea_RTK))
   (setq _velocity_north (float __velocity_north))
   (setq _velocity_east (float __velocity_east))
   (setq _velocity_ground (float __velocity_ground))
   (setq _yaw (round __yaw))
   (setq _position_flag (round __position_flag))
   (setq _yaw_flag (round __yaw_flag))
   self)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:longitude_RTK
   (&optional __longitude_RTK)
   (if __longitude_RTK (setq _longitude_RTK __longitude_RTK)) _longitude_RTK)
  (:latitude_RTK
   (&optional __latitude_RTK)
   (if __latitude_RTK (setq _latitude_RTK __latitude_RTK)) _latitude_RTK)
  (:height_above_sea_RTK
   (&optional __height_above_sea_RTK)
   (if __height_above_sea_RTK (setq _height_above_sea_RTK __height_above_sea_RTK)) _height_above_sea_RTK)
  (:velocity_north
   (&optional __velocity_north)
   (if __velocity_north (setq _velocity_north __velocity_north)) _velocity_north)
  (:velocity_east
   (&optional __velocity_east)
   (if __velocity_east (setq _velocity_east __velocity_east)) _velocity_east)
  (:velocity_ground
   (&optional __velocity_ground)
   (if __velocity_ground (setq _velocity_ground __velocity_ground)) _velocity_ground)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:position_flag
   (&optional __position_flag)
   (if __position_flag (setq _position_flag __position_flag)) _position_flag)
  (:yaw_flag
   (&optional __yaw_flag)
   (if __yaw_flag (setq _yaw_flag __yaw_flag)) _yaw_flag)
  (:serialization-length
   ()
   (+
    ;; uint32 _date
    4
    ;; uint32 _time
    4
    ;; float64 _longitude_RTK
    8
    ;; float64 _latitude_RTK
    8
    ;; float32 _height_above_sea_RTK
    4
    ;; float32 _velocity_north
    4
    ;; float32 _velocity_east
    4
    ;; float32 _velocity_ground
    4
    ;; int16 _yaw
    2
    ;; uint8 _position_flag
    1
    ;; uint8 _yaw_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _date
       (write-long _date s)
     ;; uint32 _time
       (write-long _time s)
     ;; float64 _longitude_RTK
       (sys::poke _longitude_RTK (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude_RTK
       (sys::poke _latitude_RTK (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _height_above_sea_RTK
       (sys::poke _height_above_sea_RTK (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_north
       (sys::poke _velocity_north (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_east
       (sys::poke _velocity_east (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_ground
       (sys::poke _velocity_ground (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _yaw
       (write-word _yaw s)
     ;; uint8 _position_flag
       (write-byte _position_flag s)
     ;; uint8 _yaw_flag
       (write-byte _yaw_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _date
     (setq _date (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _longitude_RTK
     (setq _longitude_RTK (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude_RTK
     (setq _latitude_RTK (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _height_above_sea_RTK
     (setq _height_above_sea_RTK (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_north
     (setq _velocity_north (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_east
     (setq _velocity_east (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_ground
     (setq _velocity_ground (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _yaw
     (setq _yaw (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _position_flag
     (setq _position_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _yaw_flag
     (setq _yaw_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::A3RTK :md5sum-) "2f1a4c1310d587c3f79f00f74019a0be")
(setf (get dji_sdk::A3RTK :datatype-) "dji_sdk/A3RTK")
(setf (get dji_sdk::A3RTK :definition-)
      "uint32 date
uint32 time
float64 longitude_RTK
float64 latitude_RTK
float32 height_above_sea_RTK
float32 velocity_north
float32 velocity_east
float32 velocity_ground
int16 yaw #between baseline and south
uint8 position_flag
uint8 yaw_flag

")



(provide :dji_sdk/A3RTK "2f1a4c1310d587c3f79f00f74019a0be")


