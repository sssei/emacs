(global-set-key "\C-h" 'delete-backward-char)
(global-set-key (kbd "C-m") 'newline-and-indent)
(define-key global-map (kbd "C-t") 'other-window)
(electric-pair-mode 1)
(load-theme 'manoj-dark t)
(setq x-select-enable-clipboard t)

(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

(setq backup-directory-alist '((".*"."~/.ehist")))

;;; package.el
(require 'package)
;; MELPAを追加
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; MELPA-stableを追加
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;; Marmaladeを追加
(add-to-list 'package-archives  '("marmalade" . "https://marmalade-repo.org/packages/"))
;; Orgを追加
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
;; 初期化
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yatex list-packages-ext xclip web-mode auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'auto-complete-config)
(ac-config-default)

(global-set-key "\M-n" (lambda () (interactive) (scroll-up 1)))
(global-set-key "\M-p" (lambda () (interactive) (scroll-down 1)))
(global-set-key "\M-]" (lambda () (interactive) (scroll-up 1)))
(global-set-key "\M-[" (lambda () (interactive) (scroll-down 1)))

(setq scroll-conservatively 1)

(require 'xclip)
(xclip-mode 1)
  
(put 'upcase-region 'disabled nil)

(set-face-attribute 'default nil
                      :family "Monaco"
                      :height 130)
(set-fontset-font "fontset-default"
		  'japanese-jisx0208
		  '("Hiragino Maru Gothic ProN"))
(set-fontset-font "fontset-default"
		  'katakana-jisx0201
		  '("Hiragino Maru Gothic ProN"))
(show-paren-mode t)
