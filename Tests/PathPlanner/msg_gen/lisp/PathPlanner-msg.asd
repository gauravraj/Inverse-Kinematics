
(cl:in-package :asdf)

(defsystem "PathPlanner-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "configMessage" :depends-on ("_package_configMessage"))
    (:file "_package_configMessage" :depends-on ("_package"))
  ))