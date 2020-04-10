
(cl:in-package :asdf)

(defsystem "xu_runtime_monitoring-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AverageSpeed" :depends-on ("_package_AverageSpeed"))
    (:file "_package_AverageSpeed" :depends-on ("_package"))
  ))