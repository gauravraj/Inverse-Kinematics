
(cl:in-package :asdf)

(defsystem "PathPlanner-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "configService" :depends-on ("_package_configService"))
    (:file "_package_configService" :depends-on ("_package"))
  ))