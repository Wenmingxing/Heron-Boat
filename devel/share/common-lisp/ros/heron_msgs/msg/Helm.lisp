; Auto-generated. Do not edit!


(cl:in-package heron_msgs-msg)


;//! \htmlinclude Helm.msg.html

(cl:defclass <Helm> (roslisp-msg-protocol:ros-message)
  ((thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass Helm (<Helm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Helm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Helm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heron_msgs-msg:<Helm> is deprecated: use heron_msgs-msg:Helm instead.")))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <Helm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:thrust-val is deprecated.  Use heron_msgs-msg:thrust instead.")
  (thrust m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <Helm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:yaw_rate-val is deprecated.  Use heron_msgs-msg:yaw_rate instead.")
  (yaw_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Helm>) ostream)
  "Serializes a message object of type '<Helm>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Helm>) istream)
  "Deserializes a message object of type '<Helm>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Helm>)))
  "Returns string type for a message object of type '<Helm>"
  "heron_msgs/Helm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Helm)))
  "Returns string type for a message object of type 'Helm"
  "heron_msgs/Helm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Helm>)))
  "Returns md5sum for a message object of type '<Helm>"
  "e2d59470d537e1bf55bc57a5005f3cd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Helm)))
  "Returns md5sum for a message object of type 'Helm"
  "e2d59470d537e1bf55bc57a5005f3cd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Helm>)))
  "Returns full string definition for message of type '<Helm>"
  (cl:format cl:nil "# Command a percentage amount of total thrust capacity, and an turn rate.~%# On a conventional craft, turn rate would map to rudder.~%~%# Thrust amount ranges from [-1.0..1.0], where 1.0 pushes Heron forward.~%float32 thrust~%~%# Yaw rate specified in radians/sec, where positive values cause Heron~%# to turn toward the port deck. The controller will use feedback from the~%# IMU's gyroscopes to attempt to match the command rate.~%float32 yaw_rate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Helm)))
  "Returns full string definition for message of type 'Helm"
  (cl:format cl:nil "# Command a percentage amount of total thrust capacity, and an turn rate.~%# On a conventional craft, turn rate would map to rudder.~%~%# Thrust amount ranges from [-1.0..1.0], where 1.0 pushes Heron forward.~%float32 thrust~%~%# Yaw rate specified in radians/sec, where positive values cause Heron~%# to turn toward the port deck. The controller will use feedback from the~%# IMU's gyroscopes to attempt to match the command rate.~%float32 yaw_rate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Helm>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Helm>))
  "Converts a ROS message object to a list"
  (cl:list 'Helm
    (cl:cons ':thrust (thrust msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
))
