;; use company-mode in all buffers
(global-company-mode 1)

;; php-mode setting
;; set php executable for php-mode
(set-variable 'php-executable "E:/Studio/php/php.exe")
;; set flymale-php
(add-hook 'php-mode-hook 'flymake-php-load)
;; set hs-minor-mode
(add-hook 'php-mode-hook 'hs-minor-mode)
;; set psr-2 coding style
(add-hook 'php-mode-hook 'php-enable-psr2-coding-style)

;; config web-mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; config js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . js2-mode))

;; turn on cursor change when Emacs is idle
(curchg-toggle-cursor-type-when-idle 1)

;; turn on column number mode
(column-number-mode)

;; show line number
;;(global-linum-mode)

;; turn on mouse avoidance mode
(mouse-avoidance-mode 'animate)

;; initialize smex
;;(smex-initialize)
;; key binds
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; overwrite etags key bind
(global-set-key (kbd "M-.") 'etags-select-find-tag-at-point)

;; set smartparens-global-mode
(smartparens-global-mode t)

;; set up window-numbering-mode
(window-numbering-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes (quote ("60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" "a6df4e244c3ced9e44376747bf70b5499a02212e5f8e40ac68c4a6c5cc6f86d2" default)))

 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(scroll-bar-mode nil))


(if window-system
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Bitstream Vera Sans Mono" :foundry "outline" :slant italic :weight normal :height 113 :width normal)))))
 ;; set minibuf font color
(set-face-foreground 'minibuffer-prompt "white"))

;; initialize color-theme
(load-theme 'monokai)
