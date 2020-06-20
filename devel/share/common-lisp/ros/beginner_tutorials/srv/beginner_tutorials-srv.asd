
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Capital" :depends-on ("_package_Capital"))
    (:file "_package_Capital" :depends-on ("_package"))
  ))