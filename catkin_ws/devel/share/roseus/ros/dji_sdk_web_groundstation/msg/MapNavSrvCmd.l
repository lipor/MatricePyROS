;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk_web_groundstation::MapNavSrvCmd)
  (if (not (find-package "DJI_SDK_WEB_GROUNDSTATION"))
    (make-package "DJI_SDK_WEB_GROUNDSTATION"))
  (shadow 'MapNavSrvCmd (find-package "DJI_SDK_WEB_GROUNDSTATION")))
(unless (find-package "DJI_SDK_WEB_GROUNDSTATION::MAPNAVSRVCMD")
  (make-package "DJI_SDK_WEB_GROUNDSTATION::MAPNAVSRVCMD"))

(in-package "ROS")
;;//! \htmlinclude MapNavSrvCmd.msg.html


(defclass dji_sdk_web_groundstation::MapNavSrvCmd
  :super ros::object
  :slots (_cmdCode _tid ))

(defmethod dji_sdk_web_groundstation::MapNavSrvCmd
  (:init
   (&key
    ((:cmdCode __cmdCode) 0)
    ((:tid __tid) 0)
    )
   (send-super :init)
   (setq _cmdCode (round __cmdCode))
   (setq _tid (round __tid))
   self)
  (:cmdCode
   (&optional __cmdCode)
   (if __cmdCode (setq _cmdCode __cmdCode)) _cmdCode)
  (:tid
   (&optional __tid)
   (if __tid (setq _tid __tid)) _tid)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmdCode
    1
    ;; uint64 _tid
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmdCode
       (write-byte _cmdCode s)
     ;; uint64 _tid
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tid (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tid) (= (length (_tid . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tid . bv) 0) 0) s)
              (write-long (ash (elt (_tid . bv) 1) -1) s))
             ((and (class _tid) (= (length (_tid . bv)) 1)) ;; big1
              (write-long (elt (_tid . bv) 0) s)
              (write-long (if (>= _tid 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tid s)(write-long (if (>= _tid 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmdCode
     (setq _cmdCode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _tid
     
#+(or :alpha :irix6 :x86_64)
      (setf _tid (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tid (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get dji_sdk_web_groundstation::MapNavSrvCmd :md5sum-) "321f9fe469695036c44374febd41879e")
(setf (get dji_sdk_web_groundstation::MapNavSrvCmd :datatype-) "dji_sdk_web_groundstation/MapNavSrvCmd")
(setf (get dji_sdk_web_groundstation::MapNavSrvCmd :definition-)
      "#command code
uint8 cmdCode
#task id
uint64 tid

")



(provide :dji_sdk_web_groundstation/MapNavSrvCmd "321f9fe469695036c44374febd41879e")


