;;; todotxt-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "todotxt" "todotxt.el" (23370 11897 894068
;;;;;;  823000))
;;; Generated autoloads from todotxt.el

(autoload 'todotxt-mode "todotxt" "\
Major mode for working with todo.txt files. \\{todotxt-mode-map}

\(fn)" t nil)

(autoload 'todotxt "todotxt" "\
Open the todo.txt buffer.  If one already exists, bring it to
the front and focus it.  Otherwise, create one and load the data
from 'todotxt-file'.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; todotxt-autoloads.el ends here
