;;;; package.lisp

(cl:in-package cl-user)


(defpackage "https://github.com/g000001/srfi-36"
  (:use)
  (:export
   &i/o-error i/o-error? &i/o-port-error i/o-port-error? i/o-error-port
   &i/o-read-error i/o-read-error? &i/o-write-error i/o-write-error?
   &i/o-closed-error i/o-closed-error? &i/o-filename-error
   i/o-filename-error? i/o-error-filename &i/o-malformed-filename-error
   i/o-malformed-filename-error? &i/o-file-protection-error
   i/o-file-protection-error? &i/o-file-is-read-only-error
   i/o-file-is-read-only-error? &i/o-file-already-exists-error
   i/o-file-already-exists-error? &i/o-no-such-file-error
   i/o-no-such-file-error? &read-error read-error? read-error-line
   read-error-column read-error-position read-error-span))


(defpackage "https://github.com/g000001/srfi-36#internals"
  (:use
   "https://github.com/g000001/srfi-36"
   "https://github.com/g000001/srfi-35"
   cl
   fiveam)
  (:shadowing-import-from 
   "https://github.com/g000001/srfi-35"
   condition
   make-condition))


;;; *EOF*
