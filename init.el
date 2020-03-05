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



;; ;;
;; ;; PATH
;; ;;
;; (setenv "PATH" "/usr/local/bin:/Library/TeX/texbin/:/Applications/Skim.app/Contents/SharedSupport:$PATH" t)
;; (setq exec-path (append '("/usr/local/bin" "/Library/TeX/texbin" "/Applications/Skim.app/Contents/SharedSupport") exec-path))

;; ;;
;; ;; YaTeX
;; ;;
;; (autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
;; (setq auto-mode-alist
;;       (append '(("\\.tex$" . yatex-mode)
;;                 ("\\.ltx$" . yatex-mode)
;;                 ("\\.cls$" . yatex-mode)
;;                 ("\\.sty$" . yatex-mode)
;;                 ("\\.clo$" . yatex-mode)
;;                 ("\\.bbl$" . yatex-mode)) auto-mode-alist))
;; (setq YaTeX-inhibit-prefix-letter t)
;; (setq YaTeX-kanji-code nil)
;; (setq YaTeX-latex-message-code 'utf-8)
;; (setq YaTeX-use-LaTeX2e t)
;; (setq YaTeX-use-AMS-LaTeX t)
;; (setq YaTeX-dvi2-command-ext-alist
;;       '(("TeXworks\\|texworks\\|texstudio\\|mupdf\\|SumatraPDF\\|Preview\\|Skim\\|TeXShop\\|evince\\|atril\\|xreader\\|okular\\|zathura\\|qpdfview\\|Firefox\\|firefox\\|chrome\\|chromium\\|MicrosoftEdge\\|microsoft-edge\\|Adobe\\|Acrobat\\|AcroRd32\\|acroread\\|pdfopen\\|xdg-open\\|open\\|start" . ".pdf")))
;; (setq tex-command "ptex2pdf -u -l -ot '-synctex=1'")
;; ;(setq tex-command "lualatex -synctex=1")
;; ;(setq tex-command "latexmk")
;; ;(setq tex-command "latexmk -e '$latex=q/uplatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
;; ;(setq tex-command "latexmk -e '$lualatex=q/lualatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -norc -gg -pdflua")
;; (setq bibtex-command "latexmk -e '$latex=q/uplatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
;; (setq makeindex-command "latexmk -e '$latex=q/uplatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
;; ;(setq dvi2-command "open -a Skim")
;; (setq dvi2-command "open -a Preview")
;; ;(setq dvi2-command "open -a TeXShop")
;; ;(setq dvi2-command "/Applications/TeXworks.app/Contents/MacOS/TeXworks")
;; ;(setq dvi2-command "/Applications/texstudio.app/Contents/MacOS/texstudio --pdf-viewer-only")
;; ;(setq tex-pdfview-command "open -a Skim")
;; (setq tex-pdfview-command "open -a Preview")
;; ;(setq tex-pdfview-command "open -a TeXShop")
;; ;(setq tex-pdfview-command "/Applications/TeXworks.app/Contents/MacOS/TeXworks")
;; ;(setq tex-pdfview-command "/Applications/texstudio.app/Contents/MacOS/texstudio --pdf-viewer-only")
;; (setq dviprint-command-format "open -a \"Adobe Acrobat Reader DC\" `echo %s | gsed -e \"s/\\.[^.]*$/\\.pdf/\"`")

;; (add-hook 'yatex-mode-hook
;;           '(lambda ()
;;              (auto-fill-mode -1)))

;; ;;
;; ;; RefTeX with YaTeX
;; ;;
;; ;(add-hook 'yatex-mode-hook 'turn-on-reftex)
;; (add-hook 'yatex-mode-hook
;;           '(lambda ()
;;              (reftex-mode 1)
;;              (define-key reftex-mode-map (concat YaTeX-prefix ">") 'YaTeX-comment-region)
;;              (define-key reftex-mode-map (concat YaTeX-prefix "<") 'YaTeX-uncomment-region)))

;; (setq dviprint-command-format "dvipdfmx %s")


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
