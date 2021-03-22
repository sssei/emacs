;; this enables this running method
;;   emacs -q -l ~/.debug.emacs.d/{{pkg}}/init.el
(eval-and-compile
  (when (or load-file-name byte-compile-current-file)
    (setq user-emacs-directory
          (expand-file-name
           (file-name-directory (or load-file-name byte-compile-current-file))))))

(eval-and-compile
  (customize-set-variable
   'package-archives '(("org"   . "https://orgmode.org/elpa/")
                       ("melpa" . "https://melpa.org/packages/")
                       ("gnu"   . "https://elpa.gnu.org/packages/")))
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))

  (leaf leaf-keywords
    :ensure t
    :init
    ;; optional packages if you want to use :hydra, :el-get, :blackout,,,
    (leaf hydra :ensure t)
    (leaf el-get :ensure t)
    (leaf blackout :ensure t)

    :config
    ;; initialize leaf-keywords.el
    (leaf-keywords-init)))

(tool-bar-mode -1)
(custom-set-variables '(scroll-conservatively 1))

;; キーバインドの追加
(define-key global-map (kbd "C-t") 'other-window)
(define-key global-map (kbd "C-h") 'delete-backward-char)
(global-set-key "\M-n" (lambda () (interactive) (scroll-up 1)))
(global-set-key "\M-p" (lambda () (interactive) (scroll-down 1)))

;; バックアップファイルの保存先の変更
(custom-set-variables '(backup-directory-alist '((".*" . "~/.ehist"))))

;; line番号表示
(global-linum-mode t)

;; paren-mode : 対応するカッコを強調して表示
(custom-set-variables '(show-paren-delay 0))
(show-paren-mode t)
(custom-set-variables '(show-paren-style 'parenthesis))
(set-face-attribute 'show-paren-match nil
      :background "gray"
      :underline 'unspecified)
(electric-pair-mode 1)

;; regionの背景色文字色変更
(set-face-attribute 'region nil
                    :background "gray"
                    :foreground "black")

(add-to-list 'display-buffer-alist
	     '("^\\*Buffer List\\*$" . (display-buffer-same-window)))

(add-to-list 'display-buffer-alist
	     '("^\\*shell\\*$" . (display-buffer-same-window)))

(add-to-list 'display-buffer-alist
	     '("^\\*Man\.\*\\*$" . (display-buffer-same-window)))



(add-hook 'dired-mode-hook
      (lambda ()
        (define-key dired-mode-map (kbd "C-t") 'other-window)))

(leaf leaf
  :config
  (leaf leaf-convert :ensure t)
  (leaf leaf-tree
    :ensure t
    :custom ((imenu-list-size . 30)
             (imenu-list-position . 'left))))
(leaf macrostep
  :ensure t
  :bind (("C-c e" . macrostep-expand)))

;; (leaf auto-complete
;;   :ensure t
;;   :leaf-defer nil
;;   :config
;;   (ac-config-default)
;;   :custom ((ac-use-menu-map . t)
;;            (ac-ignore-case . nil))
;;   :bind (:ac-mode-map
;;          ; ("M-TAB" . auto-complete))
;;          ("M-t" . auto-complete)))

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

(leaf cus-edit
  :doc "tools for customizing Emacs and Lisp packages"
  :tag "builtin" "faces" "help"
  :custom `((custom-file . ,(locate-user-emacs-file "custom.el"))))

(leaf ivy
  :doc "Incremental Vertical completYon"
  :req "emacs-24.5"
  :tag "matching" "emacs>=24.5"
  :url "https://github.com/abo-abo/swiper"
  :emacs>= 24.5
  :ensure t
  :blackout t
  :leaf-defer nil
  :custom ((ivy-initial-inputs-alist . nil)
           (ivy-use-selectable-prompt . t))
  :global-minor-mode t
  :config
  (leaf swiper
    :doc "Isearch with an overview. Oh, man!"
    :req "emacs-24.5" "ivy-0.13.0"
    :tag "matching" "emacs>=24.5"
    :url "https://github.com/abo-abo/swiper"
    :emacs>= 24.5
    :ensure t
    :bind (("C-s" . swiper)))

  (leaf counsel
    :doc "Various completion functions using Ivy"
    :req "emacs-24.5" "swiper-0.13.0"
    :tag "tools" "matching" "convenience" "emacs>=24.5"
    :url "https://github.com/abo-abo/swiper"
    :emacs>= 24.5
    :ensure t
    :blackout t
    :bind (("C-S-s" . counsel-imenu)
           ("C-x C-r" . counsel-recentf))
    :custom `((counsel-yank-pop-separator . "\n----------\n")
              (counsel-find-file-ignore-regexp . ,(rx-to-string '(or "./" "../") 'no-group)))
    :global-minor-mode t))

(leaf highlight-indent-guides
  :ensure t
  :blackout t
  :hook (((prog-mode-hook yaml-mode-hook) . highlight-indent-guides-mode))
  :custom (
           (highlight-indent-guides-method . 'character)
           (highlight-indent-guides-auto-enabled . t)
           (highlight-indent-guides-responsive . t)
           (highlight-indent-guides-character . ?\|)))

(leaf company
  :ensure t
  :leaf-defer nil
  :blackout company-mode
  :bind ((company-active-map
          ("M-n" . nil)
          ("M-p" . nil)
          ("C-s" . company-filter-candidates)
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)
	  ("C-h" . nil)
          ("C-i" . company-complete-selection))
         (company-search-map
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)))
  :custom ((company-tooltip-limit         . 12)
           (company-idle-delay            . 0) ;; 補完の遅延なし
           (company-minimum-prefix-length . 1) ;; 1文字から補完開始
           (company-transformers          . '(company-sort-by-occurrence))
           (global-company-mode           . t)
           (company-selection-wrap-around . t)))

(leaf perspective
  :doc "switch between named \"perspectives\" of the editor"
  :req "emacs-24.4" "cl-lib-0.5"
  :tag "frames" "convenience" "workspace" "emacs>=24.4"
  :added "2021-03-21"
  :url "http://github.com/nex3/perspective-el"
  :emacs>= 24.4
  :bind
  ("C-x C-b" . persp-list-buffers)
  :config
  (persp-mode)
  :ensure t)

(provide 'init)
