;;;; srfi-36.asd -*- Mode: Lisp;-*-

(cl:in-package :asdf)


(defsystem :srfi-36
  :version "20200305"
  :description "SRFI 36 for CL: I/O Conditions"
  :long-description "SRFI 36 for CL: I/O Conditions
https://srfi.schemers.org/srfi-36"
  :author "CHIBA Masaomi"
  :maintainer "CHIBA Masaomi"
  :serial t
  :depends-on (:fiveam
               :srfi-35)
  :components ((:file "package")
               (:file "srfi-36")
               (:file "test")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-36))))
  (let ((name "https://github.com/g000001/srfi-36")
        (nickname :srfi-36))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


(defmethod perform ((o test-op) (c (eql (find-system :srfi-36))))
  (let ((*package*
         (find-package
          "https://github.com/g000001/srfi-36#internals")))
    (eval
     (read-from-string
      "
      (or (let ((result (run 'srfi-36)))
            (explain! result)
            (results-status result))
          (error \"test-op failed\") )"))))


;;; *EOF*
