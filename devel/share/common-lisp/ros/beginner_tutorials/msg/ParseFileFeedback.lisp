; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude ParseFileFeedback.msg.html

(cl:defclass <ParseFileFeedback> (roslisp-msg-protocol:ros-message)
  ((last_frame
    :reader last_frame
    :initarg :last_frame
    :type cl:string
    :initform ""))
)

(cl:defclass ParseFileFeedback (<ParseFileFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParseFileFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParseFileFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<ParseFileFeedback> is deprecated: use beginner_tutorials-msg:ParseFileFeedback instead.")))

(cl:ensure-generic-function 'last_frame-val :lambda-list '(m))
(cl:defmethod last_frame-val ((m <ParseFileFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:last_frame-val is deprecated.  Use beginner_tutorials-msg:last_frame instead.")
  (last_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParseFileFeedback>) ostream)
  "Serializes a message object of type '<ParseFileFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParseFileFeedback>) istream)
  "Deserializes a message object of type '<ParseFileFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParseFileFeedback>)))
  "Returns string type for a message object of type '<ParseFileFeedback>"
  "beginner_tutorials/ParseFileFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParseFileFeedback)))
  "Returns string type for a message object of type 'ParseFileFeedback"
  "beginner_tutorials/ParseFileFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParseFileFeedback>)))
  "Returns md5sum for a message object of type '<ParseFileFeedback>"
  "10ec73c818e9fd2433ddd84137843e1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParseFileFeedback)))
  "Returns md5sum for a message object of type 'ParseFileFeedback"
  "10ec73c818e9fd2433ddd84137843e1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParseFileFeedback>)))
  "Returns full string definition for message of type '<ParseFileFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%string last_frame~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParseFileFeedback)))
  "Returns full string definition for message of type 'ParseFileFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%string last_frame~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParseFileFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'last_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParseFileFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ParseFileFeedback
    (cl:cons ':last_frame (last_frame msg))
))
