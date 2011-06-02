; Auto-generated. Do not edit!


(cl:in-package PathPlanner-srv)


;//! \htmlinclude configService-request.msg.html

(cl:defclass <configService-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:integer
    :initform 0))
)

(cl:defclass configService-request (<configService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name PathPlanner-srv:<configService-request> is deprecated: use PathPlanner-srv:configService-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <configService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader PathPlanner-srv:command-val is deprecated.  Use PathPlanner-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configService-request>) ostream)
  "Serializes a message object of type '<configService-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configService-request>) istream)
  "Deserializes a message object of type '<configService-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configService-request>)))
  "Returns string type for a service object of type '<configService-request>"
  "PathPlanner/configServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configService-request)))
  "Returns string type for a service object of type 'configService-request"
  "PathPlanner/configServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configService-request>)))
  "Returns md5sum for a message object of type '<configService-request>"
  "a3b12d0e4c8f2674ae7b0290682c99e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configService-request)))
  "Returns md5sum for a message object of type 'configService-request"
  "a3b12d0e4c8f2674ae7b0290682c99e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configService-request>)))
  "Returns full string definition for message of type '<configService-request>"
  (cl:format cl:nil "int64 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configService-request)))
  "Returns full string definition for message of type 'configService-request"
  (cl:format cl:nil "int64 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configService-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'configService-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude configService-response.msg.html

(cl:defclass <configService-response> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0))
)

(cl:defclass configService-response (<configService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name PathPlanner-srv:<configService-response> is deprecated: use PathPlanner-srv:configService-response instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <configService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader PathPlanner-srv:number-val is deprecated.  Use PathPlanner-srv:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configService-response>) ostream)
  "Serializes a message object of type '<configService-response>"
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configService-response>) istream)
  "Deserializes a message object of type '<configService-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configService-response>)))
  "Returns string type for a service object of type '<configService-response>"
  "PathPlanner/configServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configService-response)))
  "Returns string type for a service object of type 'configService-response"
  "PathPlanner/configServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configService-response>)))
  "Returns md5sum for a message object of type '<configService-response>"
  "a3b12d0e4c8f2674ae7b0290682c99e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configService-response)))
  "Returns md5sum for a message object of type 'configService-response"
  "a3b12d0e4c8f2674ae7b0290682c99e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configService-response>)))
  "Returns full string definition for message of type '<configService-response>"
  (cl:format cl:nil "int64 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configService-response)))
  "Returns full string definition for message of type 'configService-response"
  (cl:format cl:nil "int64 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configService-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'configService-response
    (cl:cons ':number (number msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'configService)))
  'configService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'configService)))
  'configService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configService)))
  "Returns string type for a service object of type '<configService>"
  "PathPlanner/configService")
