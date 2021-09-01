;;; package --- Summary
;;; Commentary:


;;; Code:

;; ------ 绑定全局快捷键 ------

;; (use-package neotree)
;; (use-package evil)

(evil-mode t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "<f2>") 'hs-toggle-hiding)
(global-set-key (kbd "<f5>") 'eshell)
;;(global-set-key (kbd "<f8>") 'neotree)
;;(global-set-key (kbd "<f9>") 'evil-mode)

;; C-a 行首 C-e 行尾
(define-key evil-insert-state-map (kbd "C-a") 'evil-first-non-blank)
(define-key evil-insert-state-map (kbd "C-e") 'evil-end-of-visual-line)

(define-key evil-normal-state-map (kbd "C-a") 'evil-first-non-blank)
(define-key evil-normal-state-map (kbd "C-e") 'evil-end-of-line)

;; C-n 上一行 C-p 下一行
(define-key evil-insert-state-map (kbd "C-n") 'next-line)
(define-key evil-insert-state-map (kbd "C-p") 'previous-line)

(define-key evil-normal-state-map (kbd "C-n") 'next-line)
(define-key evil-normal-state-map (kbd "C-p") 'previous-line)

;; C-d Del
(define-key evil-insert-state-map (kbd "C-d") 'delete-char)

(provide 'init-key-binding)

;;; init-key-binding.el ends here
