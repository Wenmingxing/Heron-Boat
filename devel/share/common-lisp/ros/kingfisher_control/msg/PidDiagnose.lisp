; Auto-generated. Do not edit!


(cl:in-package kingfisher_control-msg)


;//! \htmlinclude PidDiagnose.msg.html

(cl:defclass <PidDiagnose> (roslisp-msg-protocol:ros-message)
  ((P
    :reader P
    :initarg :P
    :type cl:float
    :initform 0.0)
   (I
    :reader I
    :initarg :I
    :type cl:float
    :initform 0.0)
   (D
    :reader D
    :initarg :D
    :type cl:float
    :initform 0.0)
   (PID
    :reader PID
    :initarg :PID
    :type cl:float
    :initform 0.0)
   (Error
    :reader Error
    :initarg :Error
    :type cl:float
    :initform 0.0)
   (Setpoint
    :reader Setpoint
    :initarg :Setpoint
    :type cl:float
    :initform 0.0)
   (Derivative
    :reader Derivative
    :initarg :Derivative
    :type cl:float
    :initform 0.0)
   (Integral
    :reader Integral
    :initarg :Integral
    :type cl:float
    :initform 0.0))
)

(cl:defclass PidDiagnose (<PidDiagnose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PidDiagnose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PidDiagnose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kingfisher_control-msg:<PidDiagnose> is deprecated: use kingfisher_control-msg:PidDiagnose instead.")))

(cl:ensure-generic-function 'P-val :lambda-list '(m))
(cl:defmethod P-val ((m <PidDiagnose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kingfisher_control-msg:P-val is deprecated.  Use kingfisher_control-msg:P instead.")
  (P m))

(cl:ensure-generic-function 'I-val :lambda-list '(m))
(cl:defmethod I-val ((m <PidDiagnose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kingfisher_control-msg:I-val is deprecated.  Use kingfisher_control-msg:I instead.")
  (I m))

(cl:ensure-generic-function 'D-val :lambda-list '(m))
(cl:defmethod D-val ((m <PidDiagnose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kingfisher_control-msg:D-val is deprecated.  Use kingfisher_control-msg:D instead.")
  (D m))

(cl:ensure-generic-function 'PID-val :lambda-list '(m))
(cl:defmethod PID-val ((m <PidDiagnose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kingfisher_control-msg:PID-val is deprecated.  Use kingfisher_control-msg:PID instead.")
  (PID m))

(cl:ensure-generic-function 'Error-val :lambda-list '(m))
(cl:defmethod Error-val ((m <PidDiagnose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kingfisher_control-msg:Error-val is deprecated.  Use kingfisher_control-msg:Error instead.")
  (Error m))

(cl:ensure-generic-function 'Setpoint-val :lambda-list '(m))
(cl:defmethod Setpoint-val ((m <PidDiagnose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kingfisher_control-msg:Setpoint-val is deprecated.  Use kingfisher_control-msg:Setpoint instead.")
  (Setpoint m))

(cl:ensure-generic-function 'Derivative-val :lambda-list '(m))
(cl:defmethod Derivative-val ((m <PidDiagnose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kingfisher_control-msg:Derivative-val is deprecated.  Use kingfisher_control-msg:Derivative instead.")
  (Derivative m))

(cl:ensure-generic-function 'Integral-val :lambda-list '(m))
(cl:defmethod Integral-val ((m <PidDiagnose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kingfisher_control-msg:Integral-val is deprecated.  Use kingfisher_control-msg:Integral instead.")
  (Integral m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PidDiagnose>) ostream)
  "Serializes a message object of type '<PidDiagnose>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'P))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'I))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'PID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Setpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Derivative))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Integral))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PidDiagnose>) istream)
  "Deserializes a message object of type '<PidDiagnose>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'P) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'I) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'PID) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Setpoint) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Derivative) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Integral) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PidDiagnose>)))
  "Returns string type for a message object of type '<PidDiagnose>"
  "kingfisher_control/PidDiagnose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PidDiagnose)))
  "Returns string type for a message object of type 'PidDiagnose"
  "kingfisher_control/PidDiagnose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PidDiagnose>)))
  "Returns md5sum for a message object of type '<PidDiagnose>"
  "178ff46e4ffd1a4c9cbf9be267502845")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PidDiagnose)))
  "Returns md5sum for a message object of type 'PidDiagnose"
  "178ff46e4ffd1a4c9cbf9be267502845")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PidDiagnose>)))
  "Returns full string definition for message of type '<PidDiagnose>"
  (cl:format cl:nil "float32 P~%float32 I~%float32 D~%float32 PID~%float32 Error~%float32 Setpoint~%float32 Derivative~%float32 Integral~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PidDiagnose)))
  "Returns full string definition for message of type 'PidDiagnose"
  (cl:format cl:nil "float32 P~%float32 I~%float32 D~%float32 PID~%float32 Error~%float32 Setpoint~%float32 Derivative~%float32 Integral~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PidDiagnose>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PidDiagnose>))
  "Converts a ROS message object to a list"
  (cl:list 'PidDiagnose
    (cl:cons ':P (P msg))
    (cl:cons ':I (I msg))
    (cl:cons ':D (D msg))
    (cl:cons ':PID (PID msg))
    (cl:cons ':Error (Error msg))
    (cl:cons ':Setpoint (Setpoint msg))
    (cl:cons ':Derivative (Derivative msg))
    (cl:cons ':Integral (Integral msg))
))
