
;;; This file gets changed automatically. I don't mess with it by other means.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(delete-selection-mode nil nil (delsel))
 '(mark-even-if-inactive t)
 '(package-selected-packages
   (quote
    (swiper rainbow-delimiters paredit kibit-helper dockerfile-mode clojure-mode-extra-font-locking clojure-cheatsheet cider-spy ac-cider)))
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t nil (paren))
 '(text-mode-hook (quote (turn-off-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style nil nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d3743" :foreground "#e1e1e0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "nil" :family "bitstream vera sans mono"))))
 '(comint-highlight-input ((t (:weight bold :height 120 :width normal :family "Bitstream Vera Sans Mono"))))
 '(comint-highlight-prompt ((t (:height 140 :width normal :family "Bitstream Vera Sans Mono"))))
 '(cursor ((t (:background "red"))))
 '(custom-face-tag-face ((t (:inherit variable-pitch :weight bold :height unspecified))) t)
 '(custom-variable-tag-face ((t (:inherit variable-pitch :height unspecified))) t)
 '(hl-line ((t (:inherit highlight :background "dim gray"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "cyan"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "magenta"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "deep sky blue")))))

(load "~/.emacs.d/init.el")
