;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::ParseFileGoal)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'ParseFileGoal (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::PARSEFILEGOAL")
  (make-package "BEGINNER_TUTORIALS::PARSEFILEGOAL"))

(in-package "ROS")
;;//! \htmlinclude ParseFileGoal.msg.html


(defclass beginner_tutorials::ParseFileGoal
  :super ros::object
  :slots (_index ))

(defmethod beginner_tutorials::ParseFileGoal
  (:init
   (&key
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::ParseFileGoal :md5sum-) "483eea06cdc3e559421ee31116d0f3b9")
(setf (get beginner_tutorials::ParseFileGoal :datatype-) "beginner_tutorials/ParseFileGoal")
(setf (get beginner_tutorials::ParseFileGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Goal
int32 index


")



(provide :beginner_tutorials/ParseFileGoal "483eea06cdc3e559421ee31116d0f3b9")

