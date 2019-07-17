;; Auto-generated. Do not edit!


(when (boundp 'dji_sdk_web_groundstation::WebWaypointReceiveGoal)
  (if (not (find-package "DJI_SDK_WEB_GROUNDSTATION"))
    (make-package "DJI_SDK_WEB_GROUNDSTATION"))
  (shadow 'WebWaypointReceiveGoal (find-package "DJI_SDK_WEB_GROUNDSTATION")))
(unless (find-package "DJI_SDK_WEB_GROUNDSTATION::WEBWAYPOINTRECEIVEGOAL")
  (make-package "DJI_SDK_WEB_GROUNDSTATION::WEBWAYPOINTRECEIVEGOAL"))

(in-package "ROS")
;;//! \htmlinclude WebWaypointReceiveGoal.msg.html
(if (not (find-package "DJI_SDK"))
  (ros::roseus-add-msgs "dji_sdk"))


(defclass dji_sdk_web_groundstation::WebWaypointReceiveGoal
  :super ros::object
  :slots (_waypoint_list _tid ))

(defmethod dji_sdk_web_groundstation::WebWaypointReceiveGoal
  (:init
   (&key
    ((:waypoint_list __waypoint_list) (instance dji_sdk::WaypointList :init))
    ((:tid __tid) 0)
    )
   (send-super :init)
   (setq _waypoint_list __waypoint_list)
   (setq _tid (round __tid))
   self)
  (:waypoint_list
   (&rest __waypoint_list)
   (if (keywordp (car __waypoint_list))
       (send* _waypoint_list __waypoint_list)
     (progn
       (if __waypoint_list (setq _waypoint_list (car __waypoint_list)))
       _waypoint_list)))
  (:tid
   (&optional __tid)
   (if __tid (setq _tid __tid)) _tid)
  (:serialization-length
   ()
   (+
    ;; dji_sdk/WaypointList _waypoint_list
    (send _waypoint_list :serialization-length)
    ;; uint64 _tid
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_sdk/WaypointList _waypoint_list
       (send _waypoint_list :serialize s)
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
   ;; dji_sdk/WaypointList _waypoint_list
     (send _waypoint_list :deserialize buf ptr-) (incf ptr- (send _waypoint_list :serialization-length))
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

(setf (get dji_sdk_web_groundstation::WebWaypointReceiveGoal :md5sum-) "6ec8abdbbe8f44dcf91e84ea5b8df4d8")
(setf (get dji_sdk_web_groundstation::WebWaypointReceiveGoal :datatype-) "dji_sdk_web_groundstation/WebWaypointReceiveGoal")
(setf (get dji_sdk_web_groundstation::WebWaypointReceiveGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
dji_sdk/WaypointList waypoint_list
#task id
uint64 tid

================================================================================
MSG: dji_sdk/WaypointList
Waypoint[] waypoint_list

================================================================================
MSG: dji_sdk/Waypoint
#latitude is in degree
float64 latitude
#longitude is in degree
float64 longitude
float32 altitude
#heading is in [-180,180]
int16 heading 
#stay time is in second
uint16 staytime

")



(provide :dji_sdk_web_groundstation/WebWaypointReceiveGoal "6ec8abdbbe8f44dcf91e84ea5b8df4d8")

