
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
;;(require 'dictionary.app)
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
 '(custom-enabled-themes '(doom-badger))
 '(custom-safe-themes
   '("f9d39ae3cc03cda8a80c8487eb3a1d20bc8100c57da16c0fbc946fff13e14b12" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "a60b04e5c0fef30209f9576f04651938472b57cb1dae0375d80a53a78f515f69" "6f177b9a2579197e650918c8e53440997063b543fc854763e3597b5a4c33860d" "afde6368be6868e8e3dd53fad1ac51223d5484f9e6836496e7987802c9a9663d" "adb2c32015c42ac06e4cadc87796c6255d7f7d107a2a5f9650672fe90fedd244" "a5b8812270156398a2d93358c0ffd9525fc4fcc4ecb9844aa040e54613146a24" "113a135eb7a2ace6d9801469324f9f7624f8c696b72e3709feb7368b06ddaccc" "6e18353d35efc18952c57d3c7ef966cad563dc65a2bba0660b951d990e23fc07" "1f292969fc19ba45fbc6542ed54e58ab5ad3dbe41b70d8cb2d1f85c22d07e518" "4d5d11bfef87416d85673947e3ca3d3d5d985ad57b02a7bb2e32beaf785a100e" "e1f4f0158cd5a01a9d96f1f7cdcca8d6724d7d33267623cc433fe1c196848554" "7964b513f8a2bb14803e717e0ac0123f100fb92160dcf4a467f530868ebaae3e" "10e5d4cc0f67ed5cafac0f4252093d2119ee8b8cb449e7053273453c1a1eb7cc" "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478" "93011fe35859772a6766df8a4be817add8bfe105246173206478a0706f88b33d" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "e8ceeba381ba723b59a9abc4961f41583112fc7dc0e886d9fc36fa1dc37b4079" "3061706fa92759264751c64950df09b285e3a2d3a9db771e99bcbb2f9b470037" "9d5124bef86c2348d7d4774ca384ae7b6027ff7f6eb3c401378e298ce605f83a" "6a5584ee8de384f2d8b1a1c30ed5b8af1d00adcbdcd70ba1967898c265878acf" "0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1" "5c7720c63b729140ed88cf35413f36c728ab7c70f8cd8422d9ee1cedeb618de5" "b754d3a03c34cfba9ad7991380d26984ebd0761925773530e24d8dd8b6894738" "c5878086e65614424a84ad5c758b07e9edcf4c513e08a1c5b1533f313d1b17f1" "9013233028d9798f901e5e8efb31841c24c12444d3b6e92580080505d56fd392" "a6920ee8b55c441ada9a19a44e9048be3bfb1338d06fc41bce3819ac22e4b5a1" "d481904809c509641a1a1f1b1eb80b94c58c210145effc2631c1a7f2e4a2fdf4" "34cf3305b35e3a8132a0b1bdf2c67623bc2cb05b125f8d7d26bd51fd16d547ec" "7c28419e963b04bf7ad14f3d8f6655c078de75e4944843ef9522dbecfcd8717d" "571661a9d205cb32dfed5566019ad54f5bb3415d2d88f7ea1d00c7c794e70a36" "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22" "452068f2985179294c73c5964c730a10e62164deed004a8ab68a5d778a2581da" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0" "df6dfd55673f40364b1970440f0b0cb8ba7149282cf415b81aaad2d98b0f0290" "f4d1b183465f2d29b7a2e9dbe87ccc20598e79738e5d29fc52ec8fb8c576fcfd" "4990532659bb6a285fee01ede3dfa1b1bdf302c5c3c8de9fad9b6bc63a9252f7" "2771ec93656faf267521dce9ffe1a6ad88cd0bea87aa0e8c4fc80bf355c58c1d" "e978b5106d203ba61eda3242317feff219f257f6300bd9b952726faf4c5dee7b" "dd4582661a1c6b865a33b89312c97a13a3885dc95992e2e5fc57456b4c545176" "48042425e84cd92184837e01d0b4fe9f912d875c43021c3bcb7eeb51f1be5710" "691d671429fa6c6d73098fc6ff05d4a14a323ea0a18787daeb93fde0e48ab18b" "a9eeab09d61fef94084a95f82557e147d9630fbbb82a837f971f83e66e21e5ad" "e14884c30d875c64f6a9cdd68fe87ef94385550cab4890182197b95d53a7cf40" "c1d5759fcb18b20fd95357dcd63ff90780283b14023422765d531330a3d3cec2" "32f22d075269daabc5e661299ca9a08716aa8cda7e85310b9625c434041916af" "dfb1c8b5bfa040b042b4ef660d0aab48ef2e89ee719a1f24a4629a0c5ed769e8" "02d422e5b99f54bd4516d4157060b874d14552fe613ea7047c4a5cfa1288cf4f" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9" "13096a9a6e75c7330c1bc500f30a8f4407bd618431c94aeab55c9855731a95e1" "9e36779f5244f7d715d206158a3dade839d4ccb17f6a2f0108bf8d476160a221" "8b148cf8154d34917dfc794b5d0fe65f21e9155977a36a5985f89c09a9669aa0" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "77fff78cc13a2ff41ad0a8ba2f09e8efd3c7e16be20725606c095f9a19c24d3d" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "30d174000ea9cbddecd6cc695943afb7dba66b302a14f9db5dd65074e70cc744" "c8c4baac2988652a760554e0e7ce11a0fe0f8468736be2b79355c9d9cc14b751" "7758a8b8912ef92e8950a4df461a4d510484b11df0d7195a8a3d003965127abc" "f5f80dd6588e59cfc3ce2f11568ff8296717a938edd448a947f9823a4e282b66" "350fef8767e45b0f81dd54c986ee6854857f27067bac88d2b1c2a6fa7fecb522" "3c08da65265d80a7c8fc99fe51df3697d0fa6786a58a477a1b22887b4f116f62" "2b20b4633721cc23869499012a69894293d49e147feeb833663fdc968f240873" "0d2c5679b6d087686dcfd4d7e57ed8e8aedcccc7f1a478cd69704c02e4ee36fe" "ffafb0e9f63935183713b204c11d22225008559fa62133a69848835f4f4a758c" "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0" "4594d6b9753691142f02e67b8eb0fda7d12f6cc9f1299a49b819312d6addad1d" "2b501400e19b1dd09d8b3708cefcb5227fda580754051a24e8abf3aff0601f87" "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641" "6f1f6a1a3cff62cc860ad6e787151b9b8599f4471d40ed746ea2819fcd184e1a" "d6b934330450d9de1112cbb7617eaf929244d192c4ffb1b9e6b63ad574784aad" "4ade6b630ba8cbab10703b27fd05bb43aaf8a3e5ba8c2dc1ea4a2de5f8d45882" "4e2e42e9306813763e2e62f115da71b485458a36e8b4c24e17a2168c45c9cf9d" "dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9" "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69" "e8bd9bbf6506afca133125b0be48b1f033b1c8647c628652ab7a2fe065c10ef0" "1b635949fe819c4d90a2d151174d0ab57c44889d3d2f09fd04d239a4baff12fb" "53a4efdca4c9fb870c3f92e4cfca0fbb638bb29b168a26a363298f9b1d9b9bcf" "bbb13492a15c3258f29c21d251da1e62f1abb8bbd492386a673dcfab474186af" "7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" "075ebf0443b362beac7da83995a6af1cf30c1591502d22b32903e7cb4a854831" "377bf88f6a5c5085bccdd96beeade170a55df7944e9768f1108ada15d4e71e02" "55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" "68f9fc40a1b15d986fd149dd286335b056dc2138fc2aa464a7402bad2c6f7bc6" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "8fed5e4b89cf69107d524c4b91b4a4c35bcf1b3563d5f306608f0c48f580fdf8" default))
 '(default-input-method "pyim")
 '(display-time-mode t)
 '(fci-rule-color "#2e2e2e")
 '(fringe-mode 0 nil (fringe))
 '(ispell-program-name "aspell")
 '(make-backup-files nil)
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
   '(alect-themes ahungry-theme doom-themes yasnippet-snippets yasnippet smex htmlize org-calibre-notes ereader pyim-basedict bing-dict translate-mode fanyi nov autumn-light-theme tabbar todotxt sr-speedbar ample-zen-theme))
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
