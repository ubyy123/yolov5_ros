
(cl:in-package :asdf)

(defsystem "message-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "MultiPoint" :depends-on ("_package_MultiPoint"))
    (:file "_package_MultiPoint" :depends-on ("_package"))
  ))