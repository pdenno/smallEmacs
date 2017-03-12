;;; -*- mode: emacs-lisp -*-

(ido-mode nil) ; undo the above (ido-mode t) which I don't like. 

(load "~/.emacs.d/init-functions")
(load "~/.emacs.d/init-variables")
(load "~/.emacs.d/init-keys")

;;; Languages
(load "~/.emacs.d/init-clojure")
(ido-mode nil) ; undo the above (ido-mode t) which I don't like.  

(auto-fill-mode -1)

(tool-bar-mode -1)

;;; Modes...

(autoload 'js2-mode "js2" nil t)
(push '("\\.g\\'" . antlr-mode) auto-mode-alist)
(push '("\\.fo\\'" . sgml-mode) auto-mode-alist)
(push '("\\.mod\\'" . c++-mode) auto-mode-alist)
(push '("\\.py\\'" . python-mode) auto-mode-alist)
(push '("\\.ino\\'" . c-mode) auto-mode-alist) ; arduino 
(push '("\\.js$" . js2-mode) auto-mode-alist)

;;; Appearance...

(setq visible-bell t)
(setq bell-volume 0)
(turn-on-font-lock)

(add-hook 'speedbar-load-hook  ; would be too late in antlr-mode.el
	  (lambda () (speedbar-add-supported-extension ".g")))

(setq default-directory "~/")

;;; If you turn on desktop-save-mode in your ~/.emacs, then when Emacs starts, 
;;; it looks for a saved desktop in the current directory. Thus, you can have 
;;; separate saved desktops in different directories, and the starting directory 
;;; determines which one Emacs reloads. You can save the current desktop and reload 
;;; one saved in another directory by typing M-x desktop-change-dir. 
;;; Typing M-x desktop-revert reverts to the desktop previously reloaded.
;;; Specify the option `--no-desktop' on the command line when you don't want it to 
;;; reload any saved desktop. This turns off desktop-save-mode for the current session. 
;;; Starting Emacs with the `--no-init-file' option also disables desktop reloading, 
;;; since it bypasses the .emacs init file, where desktop-save-mode is usually turned on. 
;;;
;;; POD use desktop-save and desktop-read. It does not look like automatic restore is happening.
(setq desktop-save-mode 1)

;;; The above isn't working. Found elsewhere:

;;; To use Desktop, you should use the Customization buffer 
;;; (see section Easy Customization Interface) to set desktop-enable to a non-nil value, 
;;;or add these lines at the end of your `.emacs' file:
(desktop-load-default)
(desktop-read)

;;; The first time you save the state of the Emacs session, you must do it manually, 
;;; with the command M-x desktop-save. Once you have done that, exiting Emacs will 
;;; save the state again--not only the present Emacs session, but also subsequent sessions. 
;;;; You can also save the state at any time, without exiting Emacs, by typing M-x desktop-save again. 
(require 'savehist)
(savehist-load)

(global-set-key [f10] 'goto-listener) ; undo

;;; If you use Options --> Customize Emacs --> Specific Face (etc.) it writes to ~/.emacs stuff that was 
;;; set by misterioso. That's probably not ideal, but it is a way to change the font size (to 130).
(load-theme 'misterioso)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)



 
