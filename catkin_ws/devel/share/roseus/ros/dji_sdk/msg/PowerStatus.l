;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::PowerStatus)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'PowerStatus (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::POWERSTATUS")
  (make-package "DJI_SDK::POWERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PowerStatus.msg.html


(defclass dji_sdk::PowerStatus
  :super ros::object
  :slots (_percentage ))

(defmethod dji_sdk::PowerStatus
  (:init
   (&key
    ((:percentage __percentage) 0)
    )
   (send-super :init)
   (setq _percentage (round __percentage))
   self)
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:serialization-length
   ()
   (+
    ;; uint8 _percentage
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _percentage
       (write-byte _percentage s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _percentage
     (setq _percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_sdk::PowerStatus :md5sum-) "0a5e877bf2d8a1641c4f5265662bc268")
(setf (get dji_sdk::PowerStatus :datatype-) "dji_sdk/PowerStatus")
(setf (get dji_sdk::PowerStatus :definition-)
      "uint8 percentage

")



(provide :dji_sdk/PowerStatus "0a5e877bf2d8a1641c4f5265662bc268")


