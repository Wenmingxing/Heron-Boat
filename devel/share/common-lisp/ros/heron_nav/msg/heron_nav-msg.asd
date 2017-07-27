
(cl:in-package :asdf)

(defsystem "heron_nav-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "spot_depth" :depends-on ("_package_spot_depth"))
    (:file "_package_spot_depth" :depends-on ("_package"))
  ))