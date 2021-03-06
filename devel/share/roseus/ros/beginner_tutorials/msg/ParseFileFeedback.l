;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::ParseFileFeedback)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'ParseFileFeedback (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::PARSEFILEFEEDBACK")
  (make-package "BEGINNER_TUTORIALS::PARSEFILEFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ParseFileFeedback.msg.html


(defclass beginner_tutorials::ParseFileFeedback
  :super ros::object
  :slots (_last_frame ))

(defmethod beginner_tutorials::ParseFileFeedback
  (:init
   (&key
    ((:last_frame __last_frame) "")
    )
   (send-super :init)
   (setq _last_frame (string __last_frame))
   self)
  (:last_frame
   (&optional __last_frame)
   (if __last_frame (setq _last_frame __last_frame)) _last_frame)
  (:serialization-length
   ()
   (+
    ;; string _last_frame
    4 (length _last_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _last_frame
       (write-long (length _last_frame) s) (princ _last_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _last_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::ParseFileFeedback :md5sum-) "10ec73c818e9fd2433ddd84137843e1c")
(setf (get beginner_tutorials::ParseFileFeedback :datatype-) "beginner_tutorials/ParseFileFeedback")
(setf (get beginner_tutorials::ParseFileFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback
string last_frame


")



(provide :beginner_tutorials/ParseFileFeedback "10ec73c818e9fd2433ddd84137843e1c")


