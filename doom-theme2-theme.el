(deftheme doom-theme2
  "Created 2019-08-27.")

(custom-theme-set-faces
 'doom-theme2
 '(cursor ((t (:background "#51afef"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "#51afef"))))
 '(highlight ((t (:foreground "black" :background "#51afef"))))
 '(region ((t (:background "#262626"))))
 '(shadow ((t (:foreground "white"))))
 '(secondary-selection ((t (:background "#3f3f3f"))))
 '(trailing-whitespace ((t (:background "#ff6655"))))
 '(font-lock-builtin-face ((t (:foreground "#51afef"))))
 '(font-lock-comment-delimiter-face ((t (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:foreground "white"))))
 '(font-lock-constant-face ((t (:foreground "#ff6655"))))
 '(font-lock-doc-face ((t (:foreground "#7d7d7d" :inherit (font-lock-comment-face)))))
 '(font-lock-function-name-face ((t (:foreground "#44b9b1"))))
 '(font-lock-keyword-face ((t (:foreground "#51afef"))))
 '(font-lock-negation-char-face ((t (:inherit nil :foreground "#51afef"))))
 '(font-lock-preprocessor-face ((t (:inherit nil :foreground "#51afef"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit nil :foreground "#51afef"))))
 '(font-lock-regexp-grouping-construct ((t (:inherit nil :foreground "#51afef"))))
 '(font-lock-string-face ((t (:foreground "#979797"))))
 '(font-lock-type-face ((t (:foreground "brightblue"))))
 '(font-lock-variable-name-face ((t (:foreground "#dfdfdf"))))
 '(font-lock-warning-face ((t (:inherit (warning)))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:weight bold :underline (:color foreground-color :style line) :foreground "#51afef"))))
 '(link-visited ((t (:foreground "magenta4" :inherit (link)))))
 '(fringe ((t (:foreground "white" :inherit (default)))))
 '(header-line ((t (:inherit (mode-line)))))
 '(tooltip ((t (:foreground "#2d2d2d" :background "#262626"))))
 '(mode-line ((t (:box nil :background "black"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:foreground "#51afef"))))
 '(mode-line-highlight ((t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:box nil :foreground "#525252"))))
 '(isearch ((t (:weight bold :foreground "black" :background "#51afef"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((t (:weight bold :foreground "#dfdfdf" :background "#2257A0"))))
 '(match ((t (:weight bold :foreground "#99bb66" :background "black"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(default ((t (:family "default" :foundry "default" :width normal :height 1 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "brightwhite" :background "unspecified-bg" :stipple nil :inherit nil)))))

(provide-theme 'doom-theme2)