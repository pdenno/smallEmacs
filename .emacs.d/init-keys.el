;;; -*- mode: emacs-lisp -*-
;;;
;;; Author: Peter Denno
;;; Date: 2002-05-23
;;; Purpose: Set key bindings.

(setq x-select-enable-clipboard t)
;;; POD 2006-12-21 - this next forms is what breaks yank!
;;;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;;; AND THEN USE Yank to get the text.

(global-set-key [f3]  'browse-url-of-buffer)
(global-set-key [f8]  'goto-python)
(when (eq system-type 'darwin)
  (global-set-key [f7]  'goto-shell))
(if (eq system-type 'darwin)
    (global-set-key [f9]  'goto-cider-in-macos)
  (global-set-key [f9]  'goto-shell))

;;; 2016-10-24 Re-evaluate the following when you restart emacs... I know!
(if (eq system-type 'darwin)
    (global-set-key [f10]  'goto-cider-in-macos)
  (global-set-key [f10] 'goto-listener))

(global-set-key [f1] 'goto-slime-listener)
(global-set-key [f11] 'goto-lisp-debugger)
;(global-set-key [f12] 'eval-expr)
(global-set-key [f12] 'goto-lisp2)
(global-set-key "\C-xj" 'jump-to-register)
(global-set-key "\C-x\C-j" 'jump-to-register)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\C-g" 'my-keyboard-quit)
(global-set-key "\C-x\/" 'point-to-register)
; 2013-07-05 emacs-for-python was setting this key! I commented it out.
;(global-set-key "\M-c" 'capitalize-word) ; the way it used to be, not calculator.

;(when (eql system-type 'windows-nt)
  (global-set-key "\240" 'set-mark-command);) ; \240 = M-Space (don't know how to write it.)

(add-hook 'LaTeX-mode-hook (lambda () (local-set-key "\C-x\C-j" 'kdvi-jump-to-line)))
(add-hook 'tex-mode-hook (lambda () (local-set-key "\C-x\C-j" 'kdvi-jump-to-line)))

;;; 
;(setq dired-load-hook
;      (lambda (&rest ignore)
;	(define-key dired-mode-map "l" 'dired-gnome-open-file)))

; POD dired???
;(setq dired-load-hook
;      (lambda (&rest ignore)
;	(define-key dired-mode-map "l" 'dired-launch-command)))

(defun my-pretty-lambda ()
  "make some word or string show as pretty Unicode symbols"
  (setq prettify-symbols-alist
        '(("forall" . 8704)
          ("lambda" . 955)))) ; λ

;(add-hook 'scheme-mode-hook 'my-pretty-lambda)
(add-hook 'cider-mode-hook 'my-pretty-lambda)
(add-hook 'company-mode-hook 'my-pretty-lambda)
(global-prettify-symbols-mode 1)

;;; KDE
;(setq dired-load-hook
;      (lambda (&rest ignore)
;	(define-key dired-mode-map "l" 'dired-launch-command)))



