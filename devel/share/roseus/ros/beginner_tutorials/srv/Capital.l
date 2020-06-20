;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Capital)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Capital (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::CAPITAL")
  (make-package "BEGINNER_TUTORIALS::CAPITAL"))
(unless (find-package "BEGINNER_TUTORIALS::CAPITALREQUEST")
  (make-package "BEGINNER_TUTORIALS::CAPITALREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::CAPITALRESPONSE")
  (make-package "BEGINNER_TUTORIALS::CAPITALRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::CapitalRequest
  :super ros::object
  :slots (_country ))

(defmethod beginner_tutorials::CapitalRequest
  (:init
   (&key
    ((:country __country) "")
    )
   (send-super :init)
   (setq _country (string __country))
   self)
  (:country
   (&optional __country)
   (if __country (setq _country __country)) _country)
  (:serialization-length
   ()
   (+
    ;; string _country
    4 (length _country)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _country
       (write-long (length _country) s) (princ _country s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _country
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _country (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::CapitalResponse
  :super ros::object
  :slots (_capital ))

(defmethod beginner_tutorials::CapitalResponse
  (:init
   (&key
    ((:capital __capital) "")
    )
   (send-super :init)
   (setq _capital (string __capital))
   self)
  (:capital
   (&optional __capital)
   (if __capital (setq _capital __capital)) _capital)
  (:serialization-length
   ()
   (+
    ;; string _capital
    4 (length _capital)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _capital
       (write-long (length _capital) s) (princ _capital s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _capital
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _capital (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::Capital
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::Capital :md5sum-) "a5ee83af03ea54aa1ccd872ec98f7439")
(setf (get beginner_tutorials::Capital :datatype-) "beginner_tutorials/Capital")
(setf (get beginner_tutorials::Capital :request) beginner_tutorials::CapitalRequest)
(setf (get beginner_tutorials::Capital :response) beginner_tutorials::CapitalResponse)

(defmethod beginner_tutorials::CapitalRequest
  (:response () (instance beginner_tutorials::CapitalResponse :init)))

(setf (get beginner_tutorials::CapitalRequest :md5sum-) "a5ee83af03ea54aa1ccd872ec98f7439")
(setf (get beginner_tutorials::CapitalRequest :datatype-) "beginner_tutorials/CapitalRequest")
(setf (get beginner_tutorials::CapitalRequest :definition-)
      "string country
---
string capital

")

(setf (get beginner_tutorials::CapitalResponse :md5sum-) "a5ee83af03ea54aa1ccd872ec98f7439")
(setf (get beginner_tutorials::CapitalResponse :datatype-) "beginner_tutorials/CapitalResponse")
(setf (get beginner_tutorials::CapitalResponse :definition-)
      "string country
---
string capital

")



(provide :beginner_tutorials/Capital "a5ee83af03ea54aa1ccd872ec98f7439")


