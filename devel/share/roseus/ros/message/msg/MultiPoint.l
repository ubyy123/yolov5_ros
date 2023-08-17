;; Auto-generated. Do not edit!


(when (boundp 'message::MultiPoint)
  (if (not (find-package "MESSAGE"))
    (make-package "MESSAGE"))
  (shadow 'MultiPoint (find-package "MESSAGE")))
(unless (find-package "MESSAGE::MULTIPOINT")
  (make-package "MESSAGE::MULTIPOINT"))

(in-package "ROS")
;;//! \htmlinclude MultiPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass message::MultiPoint
  :super ros::object
  :slots (_points _strings _points1 ))

(defmethod message::MultiPoint
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:strings __strings) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:points1 __points1) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   (setq _strings __strings)
   (setq _points1 __points1)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:strings
   (&optional __strings)
   (if __strings (setq _strings __strings)) _strings)
  (:points1
   (&rest __points1)
   (if (keywordp (car __points1))
       (send* _points1 __points1)
     (progn
       (if __points1 (setq _points1 (car __points1)))
       _points1)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; string[] _strings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _strings)) 4
    ;; geometry_msgs/Point[] _points1
    (apply #'+ (send-all _points1 :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; string[] _strings
     (write-long (length _strings) s)
     (dolist (elem _strings)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Point[] _points1
     (write-long (length _points1) s)
     (dolist (elem _points1)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _strings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _strings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _strings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Point[] _points1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points1 (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points1)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get message::MultiPoint :md5sum-) "f4c866f2a06c42321f068708a935d344")
(setf (get message::MultiPoint :datatype-) "message/MultiPoint")
(setf (get message::MultiPoint :definition-)
      "geometry_msgs/Point[] points
string[] strings
geometry_msgs/Point[] points1

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :message/MultiPoint "f4c866f2a06c42321f068708a935d344")


