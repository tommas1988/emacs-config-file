;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;

;; load Org-mode from source when the ORG_HOME environment variable is set
(when (getenv "ORG_HOME")
  (let ((org-lisp-dir (expand-file-name "lisp" (getenv "ORG_HOME"))))
    (when (file-directory-p org-lisp-dir)
      (add-to-list 'load-path org-lisp-dir)
      (require 'org))))

;; load the starter kit from the `after-init-hook' so all packages are loaded
(add-hook 'after-init-hook
 `(lambda ()
    ;; remember this directory
    (setq starter-kit-dir
          ,(file-name-directory (or load-file-name (buffer-file-name))))
    ;; only load org-mode later if we didn't load it just now
    ,(unless (and (getenv "ORG_HOME")
                  (file-directory-p (expand-file-name "lisp"
                                                      (getenv "ORG_HOME"))))
       '(require 'org))
    ;; load up the starter kit
    (org-babel-load-file (expand-file-name "starter-kit.org" starter-kit-dir))))

;; turn off the tool bar
(tool-bar-mode -1)
;; turn off the scroll bar
(scroll-bar-mode -1)

;; use company-mode in all buffers
(add-hook 'after-init-hook 'global-company-mode)

;; set php executable for php-mode
(set-variable 'php-executable "E:/Studio/php/php.exe")

;; set flymale-php
(add-hook 'php-mode-hook 'flymake-php-load)

;; set hs-minor-mode
(add-hook 'php-mode-hook 'hs-minor-mode)

;; config web-mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; config js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . js2-mode))

;; initialize color-theme
;; (eval-after-load "color-theme-autoloads" '(color-theme-initialize))
;; (eval-after-load "color-theme-library" '(color-theme-charcoal-black))
;; (eval-after-load "monochrome-theme-autoloads" '(load-theme 'monochrome))
;; (eval-after-load "ample-theme-autoloads" '(ample-theme))
(eval-after-load "monokai-theme-autoloads" '(load-theme 'monokai))

;; turn on cursor change when Emacs is idle
(eval-after-load "cursor-chg-autoloads" '(curchg-toggle-cursor-type-when-idle 1))

;; turn on column number mode
(column-number-mode)

;; show line number
;; (global-linum-mode)

;; turn on mouse avoidance mode
(mouse-avoidance-mode 'animate)

;; initialize smex
;;(smex-initialize)
;; key binds
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; set smartparens-global-mode
(eval-after-load "smartparens-autoloads" '(smartparens-global-mode t))

;; set up window-numbering-mode
(eval-after-load "window-numbering-autoloads" '(window-numbering-mode t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" "a6df4e244c3ced9e44376747bf70b5499a02212e5f8e40ac68c4a6c5cc6f86d2" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; init.el ends here
