;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-36
  (:use)
  (:export
   :&i/o-error :i/o-error? :&i/o-port-error :i/o-port-error? :i/o-error-port
   :&i/o-read-error :i/o-read-error? :&i/o-write-error :i/o-write-error?
   :&i/o-closed-error :i/o-closed-error? :&i/o-filename-error
   :i/o-filename-error? :i/o-error-filename :&i/o-malformed-filename-error
   :i/o-malformed-filename-error? :&i/o-file-protection-error
   :i/o-file-protection-error? :&i/o-file-is-read-only-error
   :i/o-file-is-read-only-error? :&i/o-file-already-exists-error
   :i/o-file-already-exists-error? :&i/o-no-such-file-error
   :i/o-no-such-file-error? :&read-error :read-error? :read-error-line
   :read-error-column :read-error-position :read-error-span))

(defpackage :srfi-36.internal
  (:use :srfi-36 :cl :fiveam :srfi-35)
  (:shadowing-import-from :srfi-35
                          :condition
                          :make-condition))
