; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude Capital-request.msg.html

(cl:defclass <Capital-request> (roslisp-msg-protocol:ros-message)
  ((country
    :reader country
    :initarg :country
    :type cl:string
    :initform ""))
)

(cl:defclass Capital-request (<Capital-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Capital-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Capital-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Capital-request> is deprecated: use beginner_tutorials-srv:Capital-request instead.")))

(cl:ensure-generic-function 'country-val :lambda-list '(m))
(cl:defmethod country-val ((m <Capital-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:country-val is deprecated.  Use beginner_tutorials-srv:country instead.")
  (country m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Capital-request>) ostream)
  "Serializes a message object of type '<Capital-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'country))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'country))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Capital-request>) istream)
  "Deserializes a message object of type '<Capital-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'country) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'country) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Capital-request>)))
  "Returns string type for a service object of type '<Capital-request>"
  "beginner_tutorials/CapitalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Capital-request)))
  "Returns string type for a service object of type 'Capital-request"
  "beginner_tutorials/CapitalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Capital-request>)))
  "Returns md5sum for a message object of type '<Capital-request>"
  "a5ee83af03ea54aa1ccd872ec98f7439")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Capital-request)))
  "Returns md5sum for a message object of type 'Capital-request"
  "a5ee83af03ea54aa1ccd872ec98f7439")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Capital-request>)))
  "Returns full string definition for message of type '<Capital-request>"
  (cl:format cl:nil "string country~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Capital-request)))
  "Returns full string definition for message of type 'Capital-request"
  (cl:format cl:nil "string country~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Capital-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'country))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Capital-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Capital-request
    (cl:cons ':country (country msg))
))
;//! \htmlinclude Capital-response.msg.html

(cl:defclass <Capital-response> (roslisp-msg-protocol:ros-message)
  ((capital
    :reader capital
    :initarg :capital
    :type cl:string
    :initform ""))
)

(cl:defclass Capital-response (<Capital-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Capital-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Capital-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Capital-response> is deprecated: use beginner_tutorials-srv:Capital-response instead.")))

(cl:ensure-generic-function 'capital-val :lambda-list '(m))
(cl:defmethod capital-val ((m <Capital-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:capital-val is deprecated.  Use beginner_tutorials-srv:capital instead.")
  (capital m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Capital-response>) ostream)
  "Serializes a message object of type '<Capital-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'capital))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'capital))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Capital-response>) istream)
  "Deserializes a message object of type '<Capital-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'capital) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'capital) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Capital-response>)))
  "Returns string type for a service object of type '<Capital-response>"
  "beginner_tutorials/CapitalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Capital-response)))
  "Returns string type for a service object of type 'Capital-response"
  "beginner_tutorials/CapitalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Capital-response>)))
  "Returns md5sum for a message object of type '<Capital-response>"
  "a5ee83af03ea54aa1ccd872ec98f7439")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Capital-response)))
  "Returns md5sum for a message object of type 'Capital-response"
  "a5ee83af03ea54aa1ccd872ec98f7439")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Capital-response>)))
  "Returns full string definition for message of type '<Capital-response>"
  (cl:format cl:nil "string capital~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Capital-response)))
  "Returns full string definition for message of type 'Capital-response"
  (cl:format cl:nil "string capital~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Capital-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'capital))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Capital-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Capital-response
    (cl:cons ':capital (capital msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Capital)))
  'Capital-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Capital)))
  'Capital-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Capital)))
  "Returns string type for a service object of type '<Capital>"
  "beginner_tutorials/Capital")