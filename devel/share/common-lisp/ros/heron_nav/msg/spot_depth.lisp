; Auto-generated. Do not edit!


(cl:in-package heron_nav-msg)


;//! \htmlinclude spot_depth.msg.html

(cl:defclass <spot_depth> (roslisp-msg-protocol:ros-message)
  ((depth
    :reader depth
    :initarg :depth
    :type cl:float
    :initform 0.0)
   (lat_spot
    :reader lat_spot
    :initarg :lat_spot
    :type cl:float
    :initform 0.0)
   (long_spot
    :reader long_spot
    :initarg :long_spot
    :type cl:float
    :initform 0.0))
)

(cl:defclass spot_depth (<spot_depth>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <spot_depth>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'spot_depth)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heron_nav-msg:<spot_depth> is deprecated: use heron_nav-msg:spot_depth instead.")))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <spot_depth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_nav-msg:depth-val is deprecated.  Use heron_nav-msg:depth instead.")
  (depth m))

(cl:ensure-generic-function 'lat_spot-val :lambda-list '(m))
(cl:defmethod lat_spot-val ((m <spot_depth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_nav-msg:lat_spot-val is deprecated.  Use heron_nav-msg:lat_spot instead.")
  (lat_spot m))

(cl:ensure-generic-function 'long_spot-val :lambda-list '(m))
(cl:defmethod long_spot-val ((m <spot_depth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heron_nav-msg:long_spot-val is deprecated.  Use heron_nav-msg:long_spot instead.")
  (long_spot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <spot_depth>) ostream)
  "Serializes a message object of type '<spot_depth>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat_spot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'long_spot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <spot_depth>) istream)
  "Deserializes a message object of type '<spot_depth>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_spot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'long_spot) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<spot_depth>)))
  "Returns string type for a message object of type '<spot_depth>"
  "heron_nav/spot_depth")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'spot_depth)))
  "Returns string type for a message object of type 'spot_depth"
  "heron_nav/spot_depth")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<spot_depth>)))
  "Returns md5sum for a message object of type '<spot_depth>"
  "01258744ab691c1e7c1bc57483923e07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'spot_depth)))
  "Returns md5sum for a message object of type 'spot_depth"
  "01258744ab691c1e7c1bc57483923e07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<spot_depth>)))
  "Returns full string definition for message of type '<spot_depth>"
  (cl:format cl:nil "#The depth for the spot~%float64 depth~%~%#The latitude for the spot~%float64 lat_spot~%~%#The longtitude for the spot~%float64 long_spot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'spot_depth)))
  "Returns full string definition for message of type 'spot_depth"
  (cl:format cl:nil "#The depth for the spot~%float64 depth~%~%#The latitude for the spot~%float64 lat_spot~%~%#The longtitude for the spot~%float64 long_spot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <spot_depth>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <spot_depth>))
  "Converts a ROS message object to a list"
  (cl:list 'spot_depth
    (cl:cons ':depth (depth msg))
    (cl:cons ':lat_spot (lat_spot msg))
    (cl:cons ':long_spot (long_spot msg))
))
