
(cl:in-package :asdf)

(defsystem "kingfisher_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PidDiagnose" :depends-on ("_package_PidDiagnose"))
    (:file "_package_PidDiagnose" :depends-on ("_package"))
  ))