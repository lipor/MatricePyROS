;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::FlightControlInfo)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'FlightControlInfo (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::FLIGHTCONTROLINFO")
  (make-package "DJI_SDK::FLIGHTCONTROLINFO"))

(in-package "ROS")
;;//! \htmlinclude FlightControlInfo.msg.html


(defclass dji_sdk::FlightControlInfo
  :super ros::object
  :slots (_control_mode _cur_ctrl_dev_in_navi_mode _serial_req_status _virtual_rc_status ))

(defmethod dji_sdk::FlightControlInfo
  (:init
   (&key
    ((:control_mode __control_mode) 0)
    ((:cur_ctrl_dev_in_navi_mode __cur_ctrl_dev_in_navi_mode) 0)
    ((:serial_req_status __serial_req_status) 0)
    ((:virtual_rc_status __virtual_rc_status) 0)
    )
   (send-super :init)
   (setq _control_mode (round __control_mode))
   (setq _cur_ctrl_dev_in_navi_mode (round __cur_ctrl_dev_in_navi_mode))
   (setq _serial_req_status (round __serial_req_status))
   (setq _virtual_rc_status (round __virtual_rc_status))
   self)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:cur_ctrl_dev_in_navi_mode
   (&optional __cur_ctrl_dev_in_navi_mode)
   (if __cur_ctrl_dev_in_navi_mode (setq _cur_ctrl_dev_in_navi_mode __cur_ctrl_dev_in_navi_mode)) _cur_ctrl_dev_in_navi_mode)
  (:serial_req_status
   (&optional __serial_req_status)
   (if __serial_req_status (setq _serial_req_status __serial_req_status)) _serial_req_status)
  (:virtual_rc_status
   (&optional __virtual_rc_status)
   (if __virtual_rc_status (setq _virtual_rc_status __virtual_rc_status)) _virtual_rc_status)
  (:serialization-length
   ()
   (+
    ;; uint8 _control_mode
    1
    ;; uint8 _cur_ctrl_dev_in_navi_mode
    1
    ;; uint8 _serial_req_status
    1
    ;; uint8 _virtual_rc_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _control_mode
       (write-byte _control_mode s)
     ;; uint8 _cur_ctrl_dev_in_navi_mode
       (write-byte _cur_ctrl_dev_in_navi_mode s)
     ;; uint8 _serial_req_status
       (write-byte _serial_req_status s)
     ;; uint8 _virtual_rc_status
       (write-byte _virtual_rc_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cur_ctrl_dev_in_navi_mode
     (setq _cur_ctrl_dev_in_navi_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _serial_req_status
     (setq _serial_req_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _virtual_rc_status
     (setq _virtual_rc_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::FlightControlInfo :md5sum-) "943648dc47db23e3c3071c5427b1db2b")
(setf (get dji_sdk::FlightControlInfo :datatype-) "dji_sdk/FlightControlInfo")
(setf (get dji_sdk::FlightControlInfo :definition-)
      "#control mode
uint8 control_mode
#0:rc, 1:mobile, 2:onboard
uint8 cur_ctrl_dev_in_navi_mode
#0:disabled, 1:enabled
uint8 serial_req_status
#0:disabled, 1:enabled
uint8 virtual_rc_status

")



(provide :dji_sdk/FlightControlInfo "943648dc47db23e3c3071c5427b1db2b")


