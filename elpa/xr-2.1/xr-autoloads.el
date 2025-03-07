;;; xr-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "xr" "xr.el" (0 0 0 0))
;;; Generated autoloads from xr.el

(autoload 'xr "xr" "\
Convert a regexp string to rx notation; the inverse of `rx'.
Passing the returned value to `rx' (or `rx-to-string') yields a regexp string
equivalent to RE-STRING.  DIALECT controls the choice of keywords,
and is one of:
`verbose'       -- verbose keywords
`medium' or nil -- somewhat verbose keywords (the default)
`brief'         -- short keywords
`terse'         -- very short keywords

\(fn RE-STRING &optional DIALECT)" nil nil)

(autoload 'xr-skip-set "xr" "\
Convert a skip set string argument to rx notation.
SKIP-SET-STRING is interpreted according to the syntax of
`skip-chars-forward' and `skip-chars-backward' and converted to
a character class on `rx' form.
If desired, `rx' can then be used to convert the result to an
ordinary regexp.
See `xr' for a description of the DIALECT argument.

\(fn SKIP-SET-STRING &optional DIALECT)" nil nil)

(autoload 'xr-lint "xr" "\
Detect dubious practices and possible mistakes in RE-STRING.
This includes uses of tolerated but discouraged constructs, as well
as outright syntax errors.

If PURPOSE is `file', perform additional checks assuming that RE-STRING
is used to match a file name.

If CHECKS is absent or nil, only perform checks that are very
likely to indicate mistakes; if `all', include all checks,
including ones more likely to generate false alarms.

Return a list of lists of (BEG END COMMENT SEVERITY), where COMMENT
applies at offsets BEG..END inclusive in RE-STRING, and SEVERITY is
`error', `warning' or `info'. The middle list level groups diagnostics
about the same problem.

\(fn RE-STRING &optional PURPOSE CHECKS)" nil nil)

(autoload 'xr-skip-set-lint "xr" "\
Detect dubious practices and possible mistakes in SKIP-SET-STRING.
This includes uses of tolerated but discouraged constructs, as well
as outright syntax errors.
The argument is interpreted according to the syntax of
`skip-chars-forward' and `skip-chars-backward'.

Return a list of lists of (BEG END COMMENT SEVERITY), where COMMENT
applies at offsets BEG..END inclusive in SKIP-SET-STRING, and SEVERITY is
`error', `warning' or `info'. The middle list level groups diagnostics
about the same problem.

\(fn SKIP-SET-STRING)" nil nil)

(autoload 'xr-pp "xr" "\
Convert to `rx' notation and output the pretty-printed result.
This function uses `xr' to translate RE-STRING into DIALECT.
It is intended for use from an interactive elisp session.
See `xr' for a description of the DIALECT argument.

\(fn RE-STRING &optional DIALECT)" nil nil)

(autoload 'xr-skip-set-pp "xr" "\
Convert a skip set string to `rx' notation and pretty-print.
This function uses `xr-skip-set' to translate SKIP-SET-STRING
into DIALECT.
It is intended for use from an interactive elisp session.
See `xr' for a description of the DIALECT argument.

\(fn SKIP-SET-STRING &optional DIALECT)" nil nil)

(register-definition-prefixes "xr" '("xr-"))

;;;***

;;;### (autoloads nil nil ("xr-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; xr-autoloads.el ends here
