; Auto-generated. Do not edit!


(cl:in-package heron_msgs-msg)


;//! \htmlinclude Course.msg.html

(cl:defclass <Course> (roslisp-msg-protocol:ros-message)
  ((yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass Course (<Course>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Course>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Course)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heron_msgs-msg:<Course> is deprecated: use heron_msgs-msg:Course instead.")))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Course>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:yaw-val is deprecated.  Use heron_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Course>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:speed-val is deprecated.  Use heron_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Course>) ostream)
  "Serializes a message object of type '<Course>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Course>) istream)
  "Deserializes a message object of type '<Course>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Course>)))
  "Returns string type for a message object of type '<Course>"
  "heron_msgs/Course")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Course)))
  "Returns string type for a message object of type 'Course"
  "heron_msgs/Course")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Course>)))
  "Returns md5sum for a message object of type '<Course>"
  "0708b47c61ea53e7faa2ee55ab9e77b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Course)))
  "Returns md5sum for a message object of type 'Course"
  "0708b47c61ea53e7faa2ee55ab9e77b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Course>)))
  "Returns full string definition for message of type '<Course>"
  (cl:format cl:nil "# Command an absolute yaw and velocity.~%~%# Yaw is specified in radians counter-clockwise from true east.~%float32 yaw~%~%# Velocity is specified in meters/s. Negative values correspond to Heron~%# reversing.~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Course)))
  "Returns full string definition for message of type 'Course"
  (cl:format cl:nil "# Command an absolute yaw and velocity.~%~%# Yaw is specified in radians counter-clockwise from true east.~%float32 yaw~%~%# Velocity is specified in meters/s. Negative values correspond to Heron~%# reversing.~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Course>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Course>))
  "Converts a ROS message object to a list"
  (cl:list 'Course
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':speed (speed msg))
))
