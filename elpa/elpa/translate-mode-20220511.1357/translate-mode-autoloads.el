;;; translate-mode-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "translate-mode" "translate-mode.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from translate-mode.el

(autoload 'translate-get-reference-paragraph-text-at-point "translate-mode" "\
Get text of the paragraph at point in the reference buffer." nil nil)

(autoload 'translate-open-reference-file "translate-mode" "\
Prompt to open the file FILENAME and set it as the reference buffer.

\(fn &optional FILENAME)" t nil)

(autoload 'translate-select-reference-buffer "translate-mode" "\
Prompt to select the reference buffer BUF.

\(fn &optional BUF)" t nil)

(autoload 'translate-mode "translate-mode" "\
Minor mode for translation buffer.

This is a minor mode.  If called interactively, toggle the
`Translate mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `translate-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'translate-reference-mode "translate-mode" "\
Minor mode for artcle referring buffer.

This is a minor mode.  If called interactively, toggle the
`Translate-Reference mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `translate-reference-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "translate-mode" '("translate"))

;;;***

;;;### (autoloads nil nil ("translate-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; translate-mode-autoloads.el ends here
