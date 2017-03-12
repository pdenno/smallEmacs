(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;;; New 2015-07-01 (but it gives an error).
;(add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(require 'cider)

;;; 2015-07-01 from the cider github page.
(setq cider-auto-mode t) ; They had it as nil. Doesn't enable cider mode on .clj !
(setq cider-log-messages nil) ; said to be extremely useful in debugging CIDER problems
(setq cider-disable-on-existing-clojure-buffers nil)
(global-company-mode)

(if (eq system-type 'darwin)
    (setq cider-lein-command "/Applications/clojure/lein")
    (setq cider-lein-command "/local/bin/lein"))

;;; Can't be defined without requiring cider first.
;;; (Maybe works with cider-auto-mode = t)
(define-key cider-repl-mode-map (kbd "C-c t") 'cider-repl-clear-buffer)
(define-key cider-repl-mode-map (kbd "C-c c") 'clojure-cheatsheet)

(ido-mode nil) ; undo the above (ido-mode t) which I don't like. 


