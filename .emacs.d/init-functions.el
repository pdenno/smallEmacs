;;; -*- mode: emacs-lisp -*-
;;;
;;; Author: Peter Denno
;;; Date: 11/7/00
;;; Purpose: Various functions
;;;

(defun lazy-lock-mode (&rest args)
 ())


(defalias 'goto-shell (read-kbd-macro "C-x b *shell* RET"))
(defalias 'goto-python (read-kbd-macro "C-x b *Python* RET"))
(defalias 'goto-cider-in-macos (read-kbd-macro "C-x b *cider-repl TAB"))

;(defalias 'goto-lisp  (read-kbd-macro "C-x b *clisp-hs* RET"))
;(defalias 'goto-lisp  (read-kbd-macro "C-x b *cmulisp* RET"))
;(defalias 'goto-lisp  (read-kbd-macro "C-x b *slime-repl[1]* RET"))

;;; sbcl
;(fset 'goto-lisp
;   [?\C-x ?b ?* ?s ?l ?i ?m ?e ?- ?r ?e ?p ?l ?  ?s ?b ?c ?l ?* return])

;(fset 'goto-lisp2
;   [?\C-x ?b ?* ?s ?l ?i ?m ?e ?- ?r ?e ?p ?l ?  ?s ?b ?c ?l ?* ?< ?2 ?> return])

;;; lispworks
;(fset 'goto-lisp
;   [?\C-x ?b ?* ?s ?l ?i ?m ?e ?- ?r ?e ?p ?l ?  ?l ?i ?s ?p ?w ?o ?r ?k ?s ?* return])

;(fset 'goto-lisp2
;   [?\C-x ?b ?* ?s ?l ?i ?m ?e ?- ?r ?e ?p ?l ?  ?l ?i ?s ?p ?w ?o ?r ?k ?s ?< ?2 ?> ?* return])


;(fset 'goto-lisp-debugger   [?\C-x ?b ?* ?s ?l ?d ?b tab return])
;(fset 'goto-lisp-debugger    [?\C-x ?b ?s ?l ?d ?b tab return]) ; Doesn't want * anymore!
(defalias 'goto-lisp-debugger (read-kbd-macro "C-x b *sldb TAB RET"))
(defalias 'goto-runme (read-kbd-macro "C-x b *clos/RunMe* RET"))
(defalias 'goto-beanshell (read-kbd-macro "C-x b *bsh* RET"))

(fset 'goto-clips [?\C-x ?b ?* ?c ?l ?i ?p ?s ?* return])

;;; Don't know why this doesn't work as a closure.
(let ((vanilla  "/usr/local/acl61/alisp.dxl")
      (astore   "/usr/local/acl61/astore.dxl")
      (expresso "~/expresso/bin/expresso1201.dxl")
      (plib-demo "~/expresso/bin/demo1209.dxl")) 
  (setq allegro-image-file plib-demo))

(defun run-lisp ()
  (interactive)
  (fi:common-lisp 
   "*common-lisp*"                    ; fi:common-lisp-buffer-name
   "~/"                               ; fi:common-lisp-directory
   "/usr/local/acl61/alisp"           ; fi:common-lisp-image-name
   nil                                ; fi:common-lisp-image-arguments
   "localhost"                        ; fi:common-lisp-host
   allegro-image-file))                        ; fi:common-lisp-image-file - if nil loads default heap image

(setq fi:lisp-mode-hook
      (function
       (lambda ()
	 (let ((map (current-local-map)))
	   (define-key map "\C-c."	'find-tag)
	   (define-key map "\C-c,"	'tags-loop-continue)
	   (define-key map "\e."	'fi:lisp-find-definition)
	   (define-key map "\e,"	'fi:lisp-find-next-definition)))))


;;; MACOS doesn't have find-if! Instead I use goto-cider-in-macos (See init-keys.el)
(defun goto-listener ()
  (interactive)
  (let ((listener
	 (find-if #'(lambda (x) 
		      (let ((name (buffer-name x)))
			(or (and  (> (length name) 11) (string= (subseq name 0 11) "*cider-repl"))
			    (and  (> (length name) 7)  (string= (subseq name 0 7)  "*Python"))
			    (and  (> (length name) 11) (string= (subseq name 0 11) "*slime-repl"))
			    )))
		  (buffer-list))))
    (when listener
      (switch-to-buffer listener))))

;;; http://omniorthogonal.blogspot.com/2008/05/useful-emacs-dired-launch-hack.html
(defun dired-launch-command ()
  "Launch files from dired for linux (KDE) and darwin."
  (interactive)
  (dired-do-shell-command 
   (case system-type       
     (gnu/linux "/usr/bin/kioclient exec") 
     (darwin "open"))
   nil
   (dired-get-marked-files t current-prefix-arg)))

(defun gnome-open-file (filename)
  "gnome-opens the specified file."
  (interactive "File to open: ")
  (let ((process-connection-type nil))
    (start-process "" nil "/usr/bin/gnome-open" filename)))

(defun dired-gnome-open-file ()
  "Opens the current file in a Dired buffer."
  (interactive)
  (gnome-open-file (dired-get-file-for-visit)))

;;; 2016-10-15 A problem surfaced a few months ago where keyboard-quit blanks out text 
;;; on the screen and then does not refresh the screen.
;;; I'm screwing around with this to ensure that it also cleans up marking with set-mark-command
(defun my-keyboard-quit ()
  "Do keyboard quit, then redraw display!"
  (interactive)
  (redraw-frame)
  (keyboard-quit)
  (setq quit-flag t)
  (redraw-frame))






