(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'orgconfig)
(require 'dictionary.app)
(require 'mkdconfig)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(setq ispell-program-name "aspell")





;; 用于查看图片时使用触摸板横向移动
(global-set-key [wheel-right] 'forward-char)
(global-set-key [wheel-left] 'backward-char)
;; 字体设置
(set-default-font "-*-Consolas-normal-normal-normal-*-16-*-*-*-m-0-iso10646-1") 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(background-color "#202020")
 '(background-mode dark)
 '(compilation-message-face (quote default))
 '(current-language-environment "UTF-8")
 '(cursor-color "#cccccc")
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("7a00b0710bb2e400d33a925f94b1cd8cfa2281f864ac9506b9046703e0045d66" "e587bd7ea49915da4556c1f5b535e920cb3f65f033ae636ba8ed0d2ca2a14df4" "0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "e4e97731f52a5237f37ceb2423cb327778c7d3af7dc831788473d4a76bcc9760" "fcb62eaea3aa4b8beb35ca861c2c14e3fb2c138938590b0ed80da8cb4d73362a" "5f3234131870c0554a88368ee81efd15caae781bd4ad2971d319bdd7e2c6370c" "860f62c21cc5884dbe728471d61cf809bd1795743f5409682b48cc320202e047" "0d4cbd289f6f40534591f6ca14810926ac9a26b387d675696b6e0f77865db9b9" "b62c9bde889ff2afa916e4a0d81fe800dab81c412cc383b00e609a98ef8c3b6e" "c55b9ea93babb488baedc1db88e86cf42d6cc8f47103777dda531dc774ac1b31" "be269789a8fed701fb92ce2b4d59f7044a8f2631634a102741ca845d64a787ae" default)))
 '(default-input-method "rfc1345")
 '(display-time-mode t)
 '(fci-rule-color "#49483E")
 '(foreground-color "#cccccc")
 '(highlight-changes-colors ("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   (("#49483E" . 0)
    ("#67930F" . 20)
    ("#349B8D" . 30)
    ("#21889B" . 50)
    ("#968B26" . 60)
    ("#A45E0A" . 70)
    ("#A41F99" . 85)
    ("#49483E" . 100)))
 '(magit-diff-use-overlays nil)
 '(make-backup-files nil)
 '(org-from-is-user-regexp "\\<Chigo Esperisto\\>")
 '(org-mobile-directory "/Users/chigo/快盘/mobile")
 '(org-odt-convert-processes
   (quote
    (("LibreOffice" "/Applications/LibreOffice.app/Contents/MacOS/soffice --headless --convert-to %f%x --outdir %d %i")
     ("unoconv" "unoconv -f %f -o %d %i"))))
 '(org-odt-preferred-output-format "docx")
 '(show-paren-mode t)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; (put 'scroll-left 'disabled nil)
