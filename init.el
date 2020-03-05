(global-set-key "\C-h" 'delete-backward-char)
(global-set-key (kbd "C-m") 'newline-and-indent)
(define-key global-map (kbd "C-t") 'other-window)
(electric-pair-mode 1)
(setq x-select-enable-clipboard t)
(keyboard-translate ?\C-h ?\C-?)

(defun init()
  (interactive)
 (find-file "~/.emacs.d/init.el"))

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

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(require 'alect-themes)

(require 'auto-complete-config)
(ac-config-default)

(global-set-key "\M-n" (lambda () (interactive) (scroll-up 1)))
(global-set-key "\M-p" (lambda () (interactive) (scroll-down 1)))
(global-set-key "\M-]" (lambda () (interactive) (scroll-up 1)))
(global-set-key "\M-[" (lambda () (interactive) (scroll-down 1)))

(setq scroll-conservatively 1)

(require 'xclip)
(xclip-mode 1)

(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-directory "~/.emacs.d/")
(setq auto-insert-alist
      (append '(
               ("\\.cpp$" . "template.cpp")
              )))
(setq auto-insert-alist
      (append '(
                ("\\.c" . "templete.c")
               )))
(setq auto-insert-alist
      (append '(
                ("\\.tex" . "template.tex")
               )))

(add-to-list 'display-buffer-alist
	     '("^\\*shell\\*$" . (display-buffer-same-window)))

(add-to-list 'display-buffer-alist
     '("^\\*Buffer List\\*$" . (display-buffer-same-window)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7f57f2fe2ec03d84d9f8abe0fe510ca47d04376f59abc88cb145d6010a4ec0f3" "5273036e4cc0a97b67da7b453ec47a1c35db46525fec581069033176bcc448a9" "4c8db09e817d8b2d3bffb84d6d0c147aa0d59869ec789f7188b382eb2d5ad234" "808ae6a67ff58b7165e91fbb45d3153e1908a5602b8895e1efda0673b386aec3" "757ea2024fae394155bebdcf75ab0571d067575a8a0f1f8003715f74fe65c501" "a2fbe470ecf939eaaf63e1c2d01b233b8757ab842576497264cf432b2882d869" "9f56acd79c54865a3f877113a486d122e3fb592de1e6cb643bdb79d79278dcef" default)))
 '(package-selected-packages
   (quote
    (markdown-mode elscreen powerline yasnippet yasnippet-bundle guile-scheme doom-themes ample-zen-theme solarized-theme darkburn-theme tangotango-theme darktooth-theme grandshell-theme forest-blue-theme foggy-night-theme afternoon-theme ample-theme zenburn-theme yatex xclip web-mode list-packages-ext helm-themes auto-complete alect-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




(require 'doom-themes)
(load-theme 'doom-theme2 t)
(show-paren-mode t)
(set-face-attribute 'show-paren-match nil
      :background "#696969")

(require 'yasnippet)


(defun revert-buffer-no-confirm (&optional force-reverting)
  "Interactive call to revert-buffer. Ignoring the auto-save
 file and not requesting for confirmation. When the current buffer
 is modified, the command refuses to revert it, unless you specify
 the optional argument: force-reverting to true."
  (interactive "P")
  ;;(message "force-reverting value is %s" force-reverting)
  (if (or force-reverting (not (buffer-modified-p)))
      (revert-buffer :ignore-auto :noconfirm)
    (error "The buffer has been modified")))




(defun new-shell ()
  (interactive)

  (let (
        (currentbuf (get-buffer-window (current-buffer)))
        (newbuf     (generate-new-buffer-name "*shell*"))
       )

   (generate-new-buffer newbuf)
   (set-window-dedicated-p currentbuf nil)
   (set-window-buffer currentbuf newbuf)
   (shell newbuf)
  )
)
