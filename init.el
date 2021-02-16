(tool-bar-mode -1)
(setq scroll-conservatively 1)

;; キーバインドの追加
(define-key global-map (kbd "C-t") 'other-window)
(define-key global-map (kbd "C-h") 'delete-backward-char)
(global-set-key "\M-n" (lambda () (interactive) (scroll-up 1)))
(global-set-key "\M-p" (lambda () (interactive) (scroll-down 1)))

;; バックアップファイルの保存先の変更
(setq backup-directory-alist '((".*" . "~/.ehist")))

;; line番号表示
(global-linum-mode t)

;; paren-mode : 対応するカッコを強調して表示
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
(set-face-attribute 'show-paren-match nil
      :background "gray"
      :underline 'unspecified)
(electric-pair-mode 1)

;; regionの背景色文字色変更
(set-face-attribute 'region nil
                    :background "gray"
                    :foreground "black")

(add-to-list 'display-buffer-alist
	     '("^\\*Buffer List\\*$" . (display-buffer-same-window))
	     '("^\\*shell\\*$" . (display-buffer-same-window)))
(add-hook 'dired-mode-hook
      (lambda ()
        (define-key dired-mode-map (kbd "C-t") 'other-window)))

(prog1 "prepare leaf"
  (prog1 "package"
    (custom-set-variables
     '(package-archives '(("org"   . "https://orgmode.org/elpa/")
                          ("melpa" . "https://melpa.org/packages/")
                          ("gnu"   . "https://elpa.gnu.org/packages/"))))
    (package-initialize))

  (prog1 "leaf"
    (unless (package-installed-p 'leaf)
      (unless (assoc 'leaf package-archive-contents)
        (package-refresh-contents))
      (condition-case err
          (package-install 'leaf)
        (error
         (package-refresh-contents)       ; renew local melpa cache if fail
         (package-install 'leaf))))

    (leaf leaf-keywords
      :ensure t
      :config (leaf-keywords-init)))

  (prog1 "optional packages for leaf-keywords"
    ;; optional packages if you want to use :hydra, :el-get,,,
    (leaf hydra :ensure t)
    (leaf el-get :ensure t
      :custom ((el-get-git-shallow-clone  . t)))))


(leaf auto-complete
  :ensure t
  :leaf-defer nil
  :config
  (ac-config-default)
  :custom ((ac-use-menu-map . t)
           (ac-ignore-case . nil))
  :bind (:ac-mode-map
         ; ("M-TAB" . auto-complete))
         ("M-t" . auto-complete)))

(leaf zenburn-theme
  :ensure t
  :config (load-theme 'zenburn t))


(leaf smart-mode-line
  :ensure t
  :custom ((sml/no-confirm-load-theme . t)
           (sml/theme . 'dark)
           (sml/shorten-directory . -1))
  :config
  (sml/setup))

(leaf *macOSclipborad
  :if (eq system-type 'darwin)
  :preface
  (defun my:copy-from-osx ()
    "Get string via pbpaste"
    (shell-command-to-string "pbpaste"))
  (defun my:paste-to-osx (text &optional push)
    "put `TEXT' via pbcopy with `PUSH' mode"
    (let ((process-connection-type nil))
      (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
        (process-send-string proc text)
        (process-send-eof proc))))
  :config
  (setq interprogram-cut-function   'my:paste-to-osx
        interprogram-paste-function 'my:copy-from-osx))


