; Auto-generated. Do not edit!


(cl:in-package heron_msgs-msg)


;//! \htmlinclude Sense.msg.html

(cl:defclass <Sense> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (battery
    :reader battery
    :initarg :battery
    :type cl:float
    :initform 0.0)
   (current_left
    :reader current_left
    :initarg :current_left
    :type cl:float
    :initform 0.0)
   (current_right
    :reader current_right
    :initarg :current_right
    :type cl:float
    :initform 0.0)
   (rc
    :reader rc
    :initarg :rc
    :type cl:fixnum
    :initform 0)
   (rc_throttle
    :reader rc_throttle
    :initarg :rc_throttle
    :type cl:fixnum
    :initform 0)
   (rc_rotation
    :reader rc_rotation
    :initarg :rc_rotation
    :type cl:fixnum
    :initform 0)
   (rc_enable
    :reader rc_enable
    :initarg :rc_enable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Sense (<Sense>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sense>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sense)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heron_msgs-msg:<Sense> is deprecated: use heron_msgs-msg:Sense instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:header-val is deprecated.  Use heron_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:battery-val is deprecated.  Use heron_msgs-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'current_left-val :lambda-list '(m))
(cl:defmethod current_left-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:current_left-val is deprecated.  Use heron_msgs-msg:current_left instead.")
  (current_left m))

(cl:ensure-generic-function 'current_right-val :lambda-list '(m))
(cl:defmethod current_right-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:current_right-val is deprecated.  Use heron_msgs-msg:current_right instead.")
  (current_right m))

(cl:ensure-generic-function 'rc-val :lambda-list '(m))
(cl:defmethod rc-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:rc-val is deprecated.  Use heron_msgs-msg:rc instead.")
  (rc m))

(cl:ensure-generic-function 'rc_throttle-val :lambda-list '(m))
(cl:defmethod rc_throttle-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:rc_throttle-val is deprecated.  Use heron_msgs-msg:rc_throttle instead.")
  (rc_throttle m))

(cl:ensure-generic-function 'rc_rotation-val :lambda-list '(m))
(cl:defmethod rc_rotation-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:rc_rotation-val is deprecated.  Use heron_msgs-msg:rc_rotation instead.")
  (rc_rotation m))

(cl:ensure-generic-function 'rc_enable-val :lambda-list '(m))
(cl:defmethod rc_enable-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_msgs-msg:rc_enable-val is deprecated.  Use heron_msgs-msg:rc_enable instead.")
  (rc_enable m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Sense>)))
    "Constants for message type '<Sense>"
  '((:RC_INRANGE . 1)
    (:RC_INUSE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Sense)))
    "Constants for message type 'Sense"
  '((:RC_INRANGE . 1)
    (:RC_INUSE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sense>) ostream)
  "Serializes a message object of type '<Sense>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc_throttle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rc_throttle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc_rotation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rc_rotation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc_enable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rc_enable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sense>) istream)
  "Deserializes a message object of type '<Sense>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc_throttle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rc_throttle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc_rotation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rc_rotation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc_enable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rc_enable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sense>)))
  "Returns string type for a message object of type '<Sense>"
  "heron_msgs/Sense")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sense)))
  "Returns string type for a message object of type 'Sense"
  "heron_msgs/Sense")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sense>)))
  "Returns md5sum for a message object of type '<Sense>"
  "56d1cbddc5154c7883e86d1d6d7fe153")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sense)))
  "Returns md5sum for a message object of type 'Sense"
  "56d1cbddc5154c7883e86d1d6d7fe153")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sense>)))
  "Returns full string definition for message of type '<Sense>"
  (cl:format cl:nil "# General MCU status for Heron transmitted from the MCU~%# to higher-level software on the /sense topic.~%~%Header header~%~%# Voltage level of battery, in volts~%float32 battery~%~%# Instantaneous current drawn by each motor, in amps.~%float32 current_left~%float32 current_right~%~%# Bitfield represents status of hobby R/C override.~%uint8 RC_INRANGE=1~%uint8 RC_INUSE=2~%uint8 rc~%~%# Pulse lengths received from the three R/C channels.~%uint16 rc_throttle~%uint16 rc_rotation~%uint16 rc_enable~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sense)))
  "Returns full string definition for message of type 'Sense"
  (cl:format cl:nil "# General MCU status for Heron transmitted from the MCU~%# to higher-level software on the /sense topic.~%~%Header header~%~%# Voltage level of battery, in volts~%float32 battery~%~%# Instantaneous current drawn by each motor, in amps.~%float32 current_left~%float32 current_right~%~%# Bitfield represents status of hobby R/C override.~%uint8 RC_INRANGE=1~%uint8 RC_INUSE=2~%uint8 rc~%~%# Pulse lengths received from the three R/C channels.~%uint16 rc_throttle~%uint16 rc_rotation~%uint16 rc_enable~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sense>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     1
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sense>))
  "Converts a ROS message object to a list"
  (cl:list 'Sense
    (cl:cons ':header (header msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':current_left (current_left msg))
    (cl:cons ':current_right (current_right msg))
    (cl:cons ':rc (rc msg))
    (cl:cons ':rc_throttle (rc_throttle msg))
    (cl:cons ':rc_rotation (rc_rotation msg))
    (cl:cons ':rc_enable (rc_enable msg))
))
