
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'orgconfig)
(require 'dictionary.app)
(require 'mkdconfig)
(require 'yasconfig)
(require 'textsizechange)
(require 'sr-speedbar)
(global-set-key (kbd "C-c s") 'sr-speedbar-toggle)

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
 '(custom-enabled-themes (quote (autumn-light)))
 '(custom-safe-themes
   (quote
    ("55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" "68f9fc40a1b15d986fd149dd286335b056dc2138fc2aa464a7402bad2c6f7bc6" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "8fed5e4b89cf69107d524c4b91b4a4c35bcf1b3563d5f306608f0c48f580fdf8" default)))
 '(default-input-method "esperanto-postfix")
 '(display-time-mode t)
 '(fci-rule-color "#2e2e2e")
 '(ispell-program-name "aspell")
 '(make-backup-files nil)
 '(nrepl-message-colors
   (quote
    ("#183691" "#888a88" "#539100" "#888a88" "#0086b3" "#183691" "#539100" "#888a88")))
 '(org-archive-location "~/org/archive.org::** Finished Tasks")
 '(org-export-with-sub-superscripts (quote {}))
 '(org-mobile-directory "~/mobileorg")
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (autumn-light-theme chyla-theme tabbar todotxt sr-speedbar ample-zen-theme color-theme-solarized cyberpunk-theme)))
 '(pdf-view-midnight-colors (quote ("#888a88" . "#edf5dc")))
 '(show-paren-mode t)
 '(tabbar-mode t nil (tabbar))
 '(user-mail-address "esperisto@gmail.com")
 '(vc-annotate-background "#3b3b3b")
 '(vc-annotate-color-map
   (quote
    ((20 . "#dd5542")
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
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Input Sans Narrow")))))
