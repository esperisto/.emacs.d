
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))

(defadvice org-html-paragraph (before fsh-org-html-paragraph-advice
                                      (paragraph contents info) activate)
  "Join consecutive Chinese lines into a single long line without
unwanted space when exporting org-mode to html."
  (let ((fixed-contents)
        (orig-contents (ad-get-arg 1))
        (reg-han "[[:multibyte:]]"))
    (setq fixed-contents (replace-regexp-in-string
                          (concat "\\(" reg-han "\\) *\n *\\(" reg-han "\\)")
                          "\\1\\2" orig-contents))
    (ad-set-arg 1 fixed-contents)
    ))

(require 'orgconfig)
(require 'dictionary.app)
(require 'mkdconfig)
(require 'yasconfig)
(require 'textsizechange)
(require 'sr-speedbar)
(require 'pyimconf)
(require 'ol-calibre)


(global-set-key (kbd "C-c s") 'sr-speedbar-toggle)
;; (define-key nov-mode-map (kbd "f") 'fanyi-dwim2)
;; (define-key nov-mode-map (kbd "d") 'bing-dict-brief)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212121" "#CC5542" "#6aaf50" "#7d7c61" "#5180b3" "#DC8CC3" "#9b55c3" "#bdbdb3"])
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes '(autumn-light))
 '(custom-safe-themes
   '("075ebf0443b362beac7da83995a6af1cf30c1591502d22b32903e7cb4a854831" "377bf88f6a5c5085bccdd96beeade170a55df7944e9768f1108ada15d4e71e02" "55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" "68f9fc40a1b15d986fd149dd286335b056dc2138fc2aa464a7402bad2c6f7bc6" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "8fed5e4b89cf69107d524c4b91b4a4c35bcf1b3563d5f306608f0c48f580fdf8" default))
 '(default-input-method "pyim")
 '(display-time-mode t)
 '(fci-rule-color "#2e2e2e")
 '(ispell-program-name "aspell")
 '(make-backup-files nil)
 '(multitran-justify-translate 'full)
 '(nrepl-message-colors
   '("#183691" "#888a88" "#539100" "#888a88" "#0086b3" "#183691" "#539100" "#888a88"))
 '(org-archive-location "~/org/archive.org::** Finished Tasks")
 '(org-export-backends '(ascii html icalendar latex md odt org))
 '(org-export-with-sub-superscripts '{})
 '(org-mobile-directory "~/mobileorg")
 '(package-archives
   '(("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(smex htmlize color-theme org-calibre-notes ereader pyim-basedict bing-dict translate-mode fanyi nov autumn-light-theme tabbar todotxt sr-speedbar ample-zen-theme))
 '(pdf-view-midnight-colors '("#888a88" . "#edf5dc"))
 '(tabbar-mode t nil (tabbar))
 '(user-mail-address "esperisto@gmail.com")
 '(vc-annotate-background "#3b3b3b")
 '(vc-annotate-color-map
   '((20 . "#dd5542")
     (40 . "#CC5542")
     (60 . "#fb8512")
     (80 . "#baba36")
     (100 . "#bdbc61")
     (120 . "#7d7c61")
     (140 . "#6abd50")
     (160 . "#6aaf50")
     (180 . "#6aa350")
     (200 . "#6a9550")
     (220 . "#6a8550")
     (240 . "#6a7550")
     (260 . "#9b55c3")
     (280 . "#6CA0A3")
     (300 . "#528fd1")
     (320 . "#5180b3")
     (340 . "#6380b3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(warning-suppress-log-types '((color-theme) (color-theme) (comp) (comp)))
 '(warning-suppress-types '((color-theme) (comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Input Mono Compressed" :foundry "FBI " :slant normal :weight normal :height 98 :width extra-condensed))))
 '(variable-pitch ((t (:family "Georgia")))))
