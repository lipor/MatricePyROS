;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::GimbalAngleControl)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'GimbalAngleControl (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::GIMBALANGLECONTROL")
  (make-package "DJI_SDK::GIMBALANGLECONTROL"))
(unless (find-package "DJI_SDK::GIMBALANGLECONTROLREQUEST")
  (make-package "DJI_SDK::GIMBALANGLECONTROLREQUEST"))
(unless (find-package "DJI_SDK::GIMBALANGLECONTROLRESPONSE")
  (make-package "DJI_SDK::GIMBALANGLECONTROLRESPONSE"))

(in-package "ROS")





(defclass dji_sdk::GimbalAngleControlRequest
  :super ros::object
  :slots (_yaw _roll _pitch _duration _absolute_or_incremental _yaw_cmd_ignore _roll_cmd_ignore _pitch_cmd_ignore ))

(defmethod dji_sdk::GimbalAngleControlRequest
  (:init
   (&key
    ((:yaw __yaw) 0)
    ((:roll __roll) 0)
    ((:pitch __pitch) 0)
    ((:duration __duration) 0)
    ((:absolute_or_incremental __absolute_or_incremental) nil)
    ((:yaw_cmd_ignore __yaw_cmd_ignore) nil)
    ((:roll_cmd_ignore __roll_cmd_ignore) nil)
    ((:pitch_cmd_ignore __pitch_cmd_ignore) nil)
    )
   (send-super :init)
   (setq _yaw (round __yaw))
   (setq _roll (round __roll))
   (setq _pitch (round __pitch))
   (setq _duration (round __duration))
   (setq _absolute_or_incremental __absolute_or_incremental)
   (setq _yaw_cmd_ignore __yaw_cmd_ignore)
   (setq _roll_cmd_ignore __roll_cmd_ignore)
   (setq _pitch_cmd_ignore __pitch_cmd_ignore)
   self)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:absolute_or_incremental
   (&optional __absolute_or_incremental)
   (if __absolute_or_incremental (setq _absolute_or_incremental __absolute_or_incremental)) _absolute_or_incremental)
  (:yaw_cmd_ignore
   (&optional __yaw_cmd_ignore)
   (if __yaw_cmd_ignore (setq _yaw_cmd_ignore __yaw_cmd_ignore)) _yaw_cmd_ignore)
  (:roll_cmd_ignore
   (&optional __roll_cmd_ignore)
   (if __roll_cmd_ignore (setq _roll_cmd_ignore __roll_cmd_ignore)) _roll_cmd_ignore)
  (:pitch_cmd_ignore
   (&optional __pitch_cmd_ignore)
   (if __pitch_cmd_ignore (setq _pitch_cmd_ignore __pitch_cmd_ignore)) _pitch_cmd_ignore)
  (:serialization-length
   ()
   (+
    ;; int16 _yaw
    2
    ;; int16 _roll
    2
    ;; int16 _pitch
    2
    ;; int16 _duration
    2
    ;; bool _absolute_or_incremental
    1
    ;; bool _yaw_cmd_ignore
    1
    ;; bool _roll_cmd_ignore
    1
    ;; bool _pitch_cmd_ignore
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _yaw
       (write-word _yaw s)
     ;; int16 _roll
       (write-word _roll s)
     ;; int16 _pitch
       (write-word _pitch s)
     ;; int16 _duration
       (write-word _duration s)
     ;; bool _absolute_or_incremental
       (if _absolute_or_incremental (write-byte -1 s) (write-byte 0 s))
     ;; bool _yaw_cmd_ignore
       (if _yaw_cmd_ignore (write-byte -1 s) (write-byte 0 s))
     ;; bool _roll_cmd_ignore
       (if _roll_cmd_ignore (write-byte -1 s) (write-byte 0 s))
     ;; bool _pitch_cmd_ignore
       (if _pitch_cmd_ignore (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _yaw
     (setq _yaw (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _roll
     (setq _roll (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pitch
     (setq _pitch (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _duration
     (setq _duration (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _absolute_or_incremental
     (setq _absolute_or_incremental (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _yaw_cmd_ignore
     (setq _yaw_cmd_ignore (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _roll_cmd_ignore
     (setq _roll_cmd_ignore (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pitch_cmd_ignore
     (setq _pitch_cmd_ignore (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::GimbalAngleControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_sdk::GimbalAngleControlResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_sdk::GimbalAngleControl
  :super ros::object
  :slots ())

(setf (get dji_sdk::GimbalAngleControl :md5sum-) "355893b815576f75c0061dddd133c146")
(setf (get dji_sdk::GimbalAngleControl :datatype-) "dji_sdk/GimbalAngleControl")
(setf (get dji_sdk::GimbalAngleControl :request) dji_sdk::GimbalAngleControlRequest)
(setf (get dji_sdk::GimbalAngleControl :response) dji_sdk::GimbalAngleControlResponse)

(defmethod dji_sdk::GimbalAngleControlRequest
  (:response () (instance dji_sdk::GimbalAngleControlResponse :init)))

(setf (get dji_sdk::GimbalAngleControlRequest :md5sum-) "355893b815576f75c0061dddd133c146")
(setf (get dji_sdk::GimbalAngleControlRequest :datatype-) "dji_sdk/GimbalAngleControlRequest")
(setf (get dji_sdk::GimbalAngleControlRequest :definition-)
      "


int16 yaw
int16 roll
int16 pitch
int16 duration

bool absolute_or_incremental
bool yaw_cmd_ignore
bool roll_cmd_ignore
bool pitch_cmd_ignore
---
bool result

")

(setf (get dji_sdk::GimbalAngleControlResponse :md5sum-) "355893b815576f75c0061dddd133c146")
(setf (get dji_sdk::GimbalAngleControlResponse :datatype-) "dji_sdk/GimbalAngleControlResponse")
(setf (get dji_sdk::GimbalAngleControlResponse :definition-)
      "


int16 yaw
int16 roll
int16 pitch
int16 duration

bool absolute_or_incremental
bool yaw_cmd_ignore
bool roll_cmd_ignore
bool pitch_cmd_ignore
---
bool result

")



(provide :dji_sdk/GimbalAngleControl "355893b815576f75c0061dddd133c146")


