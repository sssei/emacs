;;; guile-scheme-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "guile-scheme" "guile-scheme.el" (0 0 0 0))
;;; Generated autoloads from guile-scheme.el

(autoload 'guile-scheme-mode "guile-scheme" "\
Major mode for editing Guile Scheme code.
Editing commands are similar to those of `scheme-mode'.

\\{scheme-mode-map}
Entry to this mode calls the value of `scheme-mode-hook'
if that value is non-nil.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "guile-scheme" '("guile-" "scheme-interaction-mode")))

;;;***

;;;### (autoloads nil nil ("guile-scheme-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; guile-scheme-autoloads.el ends here
