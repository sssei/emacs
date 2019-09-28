;;; yasnippet-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "dropdown-list" "dropdown-list.el" (0 0 0 0))
;;; Generated autoloads from dropdown-list.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dropdown-list" '("com" "dropdown-list" "define-key*")))

;;;***

;;;### (autoloads nil "yasnippet" "yasnippet.el" (0 0 0 0))
;;; Generated autoloads from yasnippet.el

(defvar yas/root-directory nil "\
Root directory that stores the snippets for each major mode.

If you set this from your .emacs, can also be a list of strings,
for multiple root directories. If you make this a list, the first
element is always the user-created snippets directory. Other
directories are used for bulk reloading of all snippets using
`yas/reload-all'")

(custom-autoload 'yas/root-directory "yasnippet" nil)

(autoload 'yas/minor-mode "yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, the `tas/trigger-key' key expands
snippets of code depending on the mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

You can customize the key through `yas/trigger-key'.

Key bindings:
\\{yas/minor-mode-map}

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yasnippet" '("yas/" "snippet-mode" "last-buffer-undo-list")))

;;;***

;;;### (autoloads nil nil ("yasnippet-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; yasnippet-autoloads.el ends here
