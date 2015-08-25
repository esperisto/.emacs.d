(require 'org)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-to-list 'exec-path "/usr/local/bin")
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-log-done 'time)

;; (setq org-log-done 'note)

(setq org-export-preserve-breaks nil)

;; (setq org-export-with-section-numbers nil)
(setq org-agenda-files (quote ("~/org")))
(setq org-export-backends (quote (ascii html icalendar latex md odt)))
(setq org-export-with-section-numbers nil)
(add-hook 'org-mode-hook
          (lambda ()
            ;; flyspell mode for spell checking everywhere
            (flyspell-mode 1)
            ;; auto-fill mode on
            (auto-fill-mode 1)))

;; org-mode发布配置 on the Mac
(setq org-publish-project-alist
      '(

  ("org-jouchyi"
          ;; Path to your org files.
          :base-directory "~/org/"
          :base-extension "org"

          ;; Path to your Jekyll project.
          :publishing-directory "~/Github/testbloging/_posts/"
          :recursive t
          :publishing-function org-html-publish-to-html
          :headline-levels 4 
          :html-extension "html"
          :body-only t ;; Only export section between <body> </body>
    )


    ("org-static"
          :base-directory "~/org/"
          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
          :publishing-directory "~/Github/testbloging/"
          :recursive t
          :publishing-function org-publish-attachment)

    ("jouchyi" :components ("org-jouchyi" "org-static"))

))
;; org-mode 发布配置结束

;; (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; I use the following setting to remove the xml header line for HTML exports.
;; This xml line was confusing Open Office when opening the HTML to convert to ODT.

(setq org-html-xml-declaration (quote (("html" . "")
                                       ("was-html" . "<?xml version=\"1.0\" encoding=\"%s\"?>")
                                       ("php" . "<?php echo \"<?xml version=\\\"1.0\\\" encoding=\\\"%s\\\" ?>\"; ?>"))))

(provide 'orgconfig)
