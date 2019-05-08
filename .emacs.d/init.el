(global-set-key "\C-h" 'delete-backward-char)
(global-set-key (kbd "C-m") 'newline-and-indent)
(define-key global-map (kbd "C-t") 'other-window)
(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))
(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/elisp/themes/"))
(electric-pair-mode 1)






















(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (railscasts-theme darkroom helm-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
