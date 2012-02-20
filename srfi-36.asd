;;;; srfi-36.asd -*- Mode: Lisp;-*-

(cl:in-package :asdf)

(defsystem :srfi-36
  :serial t
  :depends-on (:fiveam
               :srfi-35)
  :components ((:file "package")
               (:file "srfi-36")
               (:file "test")))

(defmethod perform ((o test-op) (c (eql (find-system :srfi-36))))
  (load-system :srfi-36)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :srfi-36.internal :srfi-36))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))
