;;; package --- Summary
;;; Commentary:


;;; Code:

;; ------ 设置文件模式 ------

;; org-mode
(use-package org-contrib)

(use-package web-mode)
(use-package css-mode)
(use-package sass-mode)
;; (use-package scss-mode)
;; (use-package less-css-mode)

(use-package js2-mode)
(use-package typescript-mode)
(use-package rjsx-mode)
(use-package json-mode)

;; (use-package python-mode)
(use-package markdown-mode)
;; (use-package go-mode)
;; (use-package rust-mode)
;; (use-package vimrc-mode)


(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.htm\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))

(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;; (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
;; (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
;; (add-to-list 'auto-mode-alist '("\\.vim\\'" . vimrc-mode))
;; (add-to-list 'auto-mode-alist '("\\[._]?g?vimrc\\'" . vimrc-mode))

(provide 'file-mode)

;;; file-mode.el ends here
