;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "pyim" "20240508.256"
  "A Chinese input method support quanpin, shuangpin, wubi, cangjie and rime."
  '((emacs "27.1")
    (async "1.6")
    (xr    "1.13"))
  :url "https://github.com/tumashu/pyim"
  :commit "f22c20f2e6af55b3a758defabe4c842fb94cde2b"
  :revdesc "f22c20f2e6af"
  :keywords '("convenience" "chinese" "pinyin" "input-method")
  :authors '(("Ye Wenbin" . "wenbinye@163.com")
             ("Feng Shu" . "tumashu@163.com"))
  :maintainers '(("Feng Shu" . "tumashu@163.com")))
