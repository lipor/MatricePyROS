;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::A3GPS)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'A3GPS (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::A3GPS")
  (make-package "DJI_SDK::A3GPS"))

(in-package "ROS")
;;//! \htmlinclude A3GPS.msg.html


(defclass dji_sdk::A3GPS
  :super ros::object
  :slots (_date _time _longitude _latitude _height_above_sea _velocity_north _velocity_east _velocity_ground ))

(defmethod dji_sdk::A3GPS
  (:init
   (&key
    ((:date __date) 0)
    ((:time __time) 0)
    ((:longitude __longitude) 0)
    ((:latitude __latitude) 0)
    ((:height_above_sea __height_above_sea) 0)
    ((:velocity_north __velocity_north) 0.0)
    ((:velocity_east __velocity_east) 0.0)
    ((:velocity_ground __velocity_ground) 0.0)
    )
   (send-super :init)
   (setq _date (round __date))
   (setq _time (round __time))
   (setq _longitude (round __longitude))
   (setq _latitude (round __latitude))
   (setq _height_above_sea (round __height_above_sea))
   (setq _velocity_north (float __velocity_north))
   (setq _velocity_east (float __velocity_east))
   (setq _velocity_ground (float __velocity_ground))
   self)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:height_above_sea
   (&optional __height_above_sea)
   (if __height_above_sea (setq _height_above_sea __height_above_sea)) _height_above_sea)
  (:velocity_north
   (&optional __velocity_north)
   (if __velocity_north (setq _velocity_north __velocity_north)) _velocity_north)
  (:velocity_east
   (&optional __velocity_east)
   (if __velocity_east (setq _velocity_east __velocity_east)) _velocity_east)
  (:velocity_ground
   (&optional __velocity_ground)
   (if __velocity_ground (setq _velocity_ground __velocity_ground)) _velocity_ground)
  (:serialization-length
   ()
   (+
    ;; uint32 _date
    4
    ;; uint32 _time
    4
    ;; int32 _longitude
    4
    ;; int32 _latitude
    4
    ;; int32 _height_above_sea
    4
    ;; float32 _velocity_north
    4
    ;; float32 _velocity_east
    4
    ;; float32 _velocity_ground
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _date
       (write-long _date s)
     ;; uint32 _time
       (write-long _time s)
     ;; int32 _longitude
       (write-long _longitude s)
     ;; int32 _latitude
       (write-long _latitude s)
     ;; int32 _height_above_sea
       (write-long _height_above_sea s)
     ;; float32 _velocity_north
       (sys::poke _velocity_north (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_east
       (sys::poke _velocity_east (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_ground
       (sys::poke _velocity_ground (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _date
     (setq _date (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _longitude
     (setq _longitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _latitude
     (setq _latitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height_above_sea
     (setq _height_above_sea (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _velocity_north
     (setq _velocity_north (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_east
     (setq _velocity_east (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_ground
     (setq _velocity_ground (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_sdk::A3GPS :md5sum-) "11eb94934f90318efef991e43caf4ed1")
(setf (get dji_sdk::A3GPS :datatype-) "dji_sdk/A3GPS")
(setf (get dji_sdk::A3GPS :definition-)
      "uint32 date #GPS date
uint32 time #GPS time
int32 longitude #unit in degree*10^7
int32 latitude  #unit in degree*10^7
int32 height_above_sea #unit in mm 
float32 velocity_north #unit in cm/s
float32 velocity_east #unit in cm/s
float32 velocity_ground #unit in cm/s

")



(provide :dji_sdk/A3GPS "11eb94934f90318efef991e43caf4ed1")


