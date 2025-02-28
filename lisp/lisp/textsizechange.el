;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(defun tq-increase-text-size ()
  "Increase text size."
  (interactive)
  (set-face-attribute 'default nil :height
		      (truncate (* 1.1 (face-attribute 'default :height)))))

(defun tq-decrease-text-size ()
  "Decrease text size."
  (interactive)
  (set-face-attribute 'default nil :height
		      (truncate (* 0.9 (face-attribute 'default :height)))))

(global-set-key (kbd "C--") 'tq-decrease-text-size)
(global-set-key (kbd "C-=") 'tq-increase-text-size)

(provide 'textsizechange)
