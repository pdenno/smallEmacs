;;; -*- mode: emacs-lisp -*-
;;;
;;; Author: Peter Denno
;;; Date: 11/7/00
;;; Purpose: various variables for emacs
;;;

;;; 2013-06-07 (wilbur)
; w <--- signifies change for wilbur. 

(when (eql system-type 'windows-nt)
  (setq shell-file-name "C:/cygwin/bin/bash.exe"))

;;;  SLIME
;w(setq inferior-lisp-program "/usr/bin/sbcl")
;w(setq inferior-lisp-program "/usr/local/bin/lisp -core /usr/local/lisp/cmucl/fortified-vanilla.core")
(setq common-lisp-hyperspec-root "file:/usr/lib/LispWorks/lib/4-3-0-0/manual/online/web/CLHS/")

(setq font-lock-maximum-size nil) ; could be a number too.
;w(setq ediff-diff-program  "diff")
;w(setq ediff-diff3-program "diff3")
(setq user-mail-address "peter.denno@nist.gov")
(setq teach-extended-commands-p t)
;(setq sgml-indent-step 1) ; How can we set a buffer local variable?

;(setq py-python-command "/usr/bin/python2.3")
;(setq py-temp-directory "/var/tmp")
;;; The next two are mine, for use with cygwin
;(setq  py-dos-temp-directory "d:/cygwin/usr/tmp")

;;; NOTE!!!! CLASSPATH is separated by ';' in windows and ':' in linux
;(setenv "CLASSPATH" ".:/usr/local/antlr-2.7.1:/home/pdenno/meta/classes")
;w(setenv "CLASSPATH" ".") 
;w(setenv "LD_LIBRARY_PATH" "/usr/local/ODI/ostore/lib:/usr/local/acl61")
;w(setenv "OS_ROOTDIR" "/usr/local/ODI/ostore")
;w(setenv "AS_CONFIG_PATH" "/usr/local/acl61")
;w(setenv "CVS_SERVER" "/depot/pub/arch/bin/cvs")
;w(setenv "CVS_SERVER" "cvs")





