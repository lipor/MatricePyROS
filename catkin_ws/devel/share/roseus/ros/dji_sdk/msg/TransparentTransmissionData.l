;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk::TransparentTransmissionData)
  (if (not (find-package "DJI_SDK"))
    (make-package "DJI_SDK"))
  (shadow 'TransparentTransmissionData (find-package "DJI_SDK")))
(unless (find-package "DJI_SDK::TRANSPARENTTRANSMISSIONDATA")
  (make-package "DJI_SDK::TRANSPARENTTRANSMISSIONDATA"))

(in-package "ROS")
;;//! \htmlinclude TransparentTransmissionData.msg.html


(defclass dji_sdk::TransparentTransmissionData
  :super ros::object
  :slots (_data ))

(defmethod dji_sdk::TransparentTransmissionData
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get dji_sdk::TransparentTransmissionData :md5sum-) "f43a8e1b362b75baa741461b46adc7e0")
(setf (get dji_sdk::TransparentTransmissionData :datatype-) "dji_sdk/TransparentTransmissionData")
(setf (get dji_sdk::TransparentTransmissionData :definition-)
      "uint8[] data

")



(provide :dji_sdk/TransparentTransmissionData "f43a8e1b362b75baa741461b46adc7e0")


