(deftheme manoj-dark2
  "Created 2019-08-17.")

(custom-theme-set-faces
 'manoj-dark2
 '(cursor ((t (:background "orchid"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "medium blue"))))
 '(highlight ((t (:foreground "Old Lace" :background "gray10"))))
 '(region ((((class color) (min-colors 88) (background dark)) (:background "blue3")) (((class color) (min-colors 88) (background light) (type gtk)) (:background "gtk_selection_bg_color" :distant-foreground "gtk_selection_fg_color")) (((class color) (min-colors 88) (background light) (type ns)) (:background "ns_selection_bg_color" :distant-foreground "ns_selection_fg_color")) (((class color) (min-colors 88) (background light)) (:background "lightgoldenrod2")) (((class color) (min-colors 16) (background dark)) (:background "blue3")) (((class color) (min-colors 16) (background light)) (:background "lightgoldenrod2")) (((class color) (min-colors 8)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 16) (background light)) (:background "yellow")) (((class color) (min-colors 16) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 8)) (:foreground "black" :background "cyan")) (t (:inverse-video t))))
 '(trailing-whitespace ((((class color) (background light)) (:background "red1")) (((class color) (background dark)) (:background "red1")) (t (:inverse-video t))))
 '(font-lock-builtin-face ((((class grayscale) (background light)) (:weight bold :foreground "LightGray")) (((class grayscale) (background dark)) (:weight bold :foreground "DimGray")) (((class color) (min-colors 88) (background light)) (:foreground "dark slate blue")) (((class color) (min-colors 88) (background dark)) (:foreground "LightSteelBlue")) (((class color) (min-colors 16) (background light)) (:foreground "Orchid")) (((class color) (min-colors 16) (background dark)) (:foreground "LightSteelBlue")) (((class color) (min-colors 8)) (:weight bold :foreground "blue")) (t (:weight bold))))
 '(font-lock-comment-delimiter-face ((t (:foreground "Salmon"))))
 '(font-lock-comment-face ((t (:slant oblique :foreground "chocolate1"))))
 '(font-lock-constant-face ((t (:foreground "LightSlateBlue"))))
 '(font-lock-doc-face ((t (:slant oblique :foreground "LightCoral"))))
 '(font-lock-function-name-face ((t (:foreground "mediumspringgreen" :weight normal :height 1.1))))
 '(font-lock-keyword-face ((t (:foreground "cyan1"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:slant italic :foreground "CornFlowerBlue"))))
 '(font-lock-regexp-grouping-backslash ((t (:weight bold))))
 '(font-lock-regexp-grouping-construct ((t (:weight bold))))
 '(font-lock-string-face ((t (:foreground "RosyBrown1"))))
 '(font-lock-type-face ((t (:foreground "SteelBlue1"))))
 '(font-lock-variable-name-face ((t (:foreground "Aquamarine"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "Pink"))))
 '(button ((t (:weight bold :underline (:color foreground-color :style line) :box (:line-width 2 :color "grey" :style released-button) :foreground "black" :background "grey"))))
 '(link ((((class color) (min-colors 88) (background light)) (:underline (:color foreground-color :style line) :foreground "RoyalBlue3")) (((class color) (background light)) (:underline (:color foreground-color :style line) :foreground "blue")) (((class color) (min-colors 88) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan1")) (((class color) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan")) (t (:inherit (underline)))))
 '(link-visited ((t (:underline (:color foreground-color :style line) :foreground "violet"))))
 '(fringe ((t (:foreground "Wheat" :background "grey30"))))
 '(header-line ((t (:height 0.9 :box (:line-width -1 :color "grey20" :style released-button) :foreground "grey90" :background "grey20"))))
 '(tooltip ((t (:foreground "black" :background "lightyellow"))))
 '(mode-line ((t (:height 0.9 :box (:line-width 1 :color nil :style nil) :foreground "Blue" :background "grey75"))))
 '(mode-line-buffer-id ((t (:height 0.9 :weight bold :foreground "red" :background "grey65"))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
 '(mode-line-inactive ((t (:height 0.9 :weight light :box (:line-width 1 :color nil :style nil) :foreground "grey80" :background "grey30"))))
 '(isearch ((((class color) (min-colors 88) (background light)) (:foreground "lightskyblue1" :background "magenta3")) (((class color) (min-colors 88) (background dark)) (:foreground "brown4" :background "palevioletred2")) (((class color) (min-colors 16)) (:foreground "cyan1" :background "magenta4")) (((class color) (min-colors 8)) (:foreground "cyan1" :background "magenta4")) (t (:inverse-video t))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "paleturquoise")) (((class color) (min-colors 88) (background dark)) (:background "paleturquoise4")) (((class color) (min-colors 16)) (:background "turquoise3")) (((class color) (min-colors 8)) (:background "turquoise3")) (t (:underline (:color foreground-color :style line)))))
 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
 '(next-error ((t (:background "blue3"))))
 '(query-replace ((t (:foreground "brown4" :background "palevioletred2"))))
 '(default ((t (:inherit nil :stipple nil :background "color-240" :foreground "WhiteSmoke" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default")))))

(provide-theme 'manoj-dark2)
