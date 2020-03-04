(cl:in-package "https://github.com/g000001/srfi-36#internals")


(def-suite* srfi-36)


(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun fintern (control-string &rest args)
    (intern (apply #'format nil control-string args))))


(macrolet ((tst (&rest names)
             `(progn
                ,@(mapcar (lambda (x)
                            `(test ,x
                               (is-true (,(fintern "~A?" (subseq (string x) 1))
                                          (make-condition ,x) ))))
                          names ))))
  (tst &i/o-error
       &i/o-port-error
       &i/o-read-error
       &i/o-write-error
       &i/o-closed-error
       &i/o-filename-error
       &i/o-malformed-filename-error
       &i/o-filename-error
       &i/o-malformed-filename-error
       &i/o-file-protection-error
       &i/o-file-is-read-only-error
       &i/o-file-is-read-only-error
       &i/o-file-already-exists-error
       &i/o-no-such-file-error
       &read-error ))


;;; *EOF*
