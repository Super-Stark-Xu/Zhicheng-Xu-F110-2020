; Auto-generated. Do not edit!


(cl:in-package xu_runtime_monitoring-srv)


;//! \htmlinclude AverageSpeed-request.msg.html

(cl:defclass <AverageSpeed-request> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass AverageSpeed-request (<AverageSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AverageSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AverageSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xu_runtime_monitoring-srv:<AverageSpeed-request> is deprecated: use xu_runtime_monitoring-srv:AverageSpeed-request instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <AverageSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xu_runtime_monitoring-srv:distance-val is deprecated.  Use xu_runtime_monitoring-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <AverageSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xu_runtime_monitoring-srv:time-val is deprecated.  Use xu_runtime_monitoring-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AverageSpeed-request>) ostream)
  "Serializes a message object of type '<AverageSpeed-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AverageSpeed-request>) istream)
  "Deserializes a message object of type '<AverageSpeed-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AverageSpeed-request>)))
  "Returns string type for a service object of type '<AverageSpeed-request>"
  "xu_runtime_monitoring/AverageSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AverageSpeed-request)))
  "Returns string type for a service object of type 'AverageSpeed-request"
  "xu_runtime_monitoring/AverageSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AverageSpeed-request>)))
  "Returns md5sum for a message object of type '<AverageSpeed-request>"
  "221e08f65343de99d29b1a4f55b68d0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AverageSpeed-request)))
  "Returns md5sum for a message object of type 'AverageSpeed-request"
  "221e08f65343de99d29b1a4f55b68d0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AverageSpeed-request>)))
  "Returns full string definition for message of type '<AverageSpeed-request>"
  (cl:format cl:nil "float64 distance~%float64 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AverageSpeed-request)))
  "Returns full string definition for message of type 'AverageSpeed-request"
  (cl:format cl:nil "float64 distance~%float64 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AverageSpeed-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AverageSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AverageSpeed-request
    (cl:cons ':distance (distance msg))
    (cl:cons ':time (time msg))
))
;//! \htmlinclude AverageSpeed-response.msg.html

(cl:defclass <AverageSpeed-response> (roslisp-msg-protocol:ros-message)
  ((ave_speed
    :reader ave_speed
    :initarg :ave_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass AverageSpeed-response (<AverageSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AverageSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AverageSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xu_runtime_monitoring-srv:<AverageSpeed-response> is deprecated: use xu_runtime_monitoring-srv:AverageSpeed-response instead.")))

(cl:ensure-generic-function 'ave_speed-val :lambda-list '(m))
(cl:defmethod ave_speed-val ((m <AverageSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xu_runtime_monitoring-srv:ave_speed-val is deprecated.  Use xu_runtime_monitoring-srv:ave_speed instead.")
  (ave_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AverageSpeed-response>) ostream)
  "Serializes a message object of type '<AverageSpeed-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ave_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AverageSpeed-response>) istream)
  "Deserializes a message object of type '<AverageSpeed-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ave_speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AverageSpeed-response>)))
  "Returns string type for a service object of type '<AverageSpeed-response>"
  "xu_runtime_monitoring/AverageSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AverageSpeed-response)))
  "Returns string type for a service object of type 'AverageSpeed-response"
  "xu_runtime_monitoring/AverageSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AverageSpeed-response>)))
  "Returns md5sum for a message object of type '<AverageSpeed-response>"
  "221e08f65343de99d29b1a4f55b68d0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AverageSpeed-response)))
  "Returns md5sum for a message object of type 'AverageSpeed-response"
  "221e08f65343de99d29b1a4f55b68d0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AverageSpeed-response>)))
  "Returns full string definition for message of type '<AverageSpeed-response>"
  (cl:format cl:nil "float64 ave_speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AverageSpeed-response)))
  "Returns full string definition for message of type 'AverageSpeed-response"
  (cl:format cl:nil "float64 ave_speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AverageSpeed-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AverageSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AverageSpeed-response
    (cl:cons ':ave_speed (ave_speed msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AverageSpeed)))
  'AverageSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AverageSpeed)))
  'AverageSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AverageSpeed)))
  "Returns string type for a service object of type '<AverageSpeed>"
  "xu_runtime_monitoring/AverageSpeed")