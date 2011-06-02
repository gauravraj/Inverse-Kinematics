; Auto-generated. Do not edit!


(cl:in-package PathPlanner-msg)


;//! \htmlinclude configMessage.msg.html

(cl:defclass <configMessage> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass configMessage (<configMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name PathPlanner-msg:<configMessage> is deprecated: use PathPlanner-msg:configMessage instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <configMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader PathPlanner-msg:num-val is deprecated.  Use PathPlanner-msg:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configMessage>) ostream)
  "Serializes a message object of type '<configMessage>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configMessage>) istream)
  "Deserializes a message object of type '<configMessage>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configMessage>)))
  "Returns string type for a message object of type '<configMessage>"
  "PathPlanner/configMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configMessage)))
  "Returns string type for a message object of type 'configMessage"
  "PathPlanner/configMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configMessage>)))
  "Returns md5sum for a message object of type '<configMessage>"
  "57d3c40ec3ac3754af76a83e6e73127a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configMessage)))
  "Returns md5sum for a message object of type 'configMessage"
  "57d3c40ec3ac3754af76a83e6e73127a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configMessage>)))
  "Returns full string definition for message of type '<configMessage>"
  (cl:format cl:nil "int64 num~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configMessage)))
  "Returns full string definition for message of type 'configMessage"
  (cl:format cl:nil "int64 num~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configMessage>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'configMessage
    (cl:cons ':num (num msg))
))
