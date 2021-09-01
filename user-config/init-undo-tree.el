;;; package --- Summary
;;; Commentary:


;;; Code:

;; ------ 撤销与重做 ------

(use-package undo-tree
	:init
	(global-undo-tree-mode)
	(evil-set-undo-system 'undo-tree)
	:config
	;; C-/ undo C-? redo
)
	;; (define-key evil-normal-state-map (kbd "C-/") 'undo-fu-only-undo)
	;; (define-key evil-normal-state-map (kbd "C-?") 'undo-fu-only-redo)
	;; (define-key evil-insert-state-map (kbd "C-/") 'undo-fu-only-undo)
	;; (define-key evil-insert-state-map (kbd "C-?") 'undo-fu-only-redo))

(provide 'init-undo-tree)

;;; init-undo-tree.el ends here
