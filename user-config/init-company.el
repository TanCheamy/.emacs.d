;;; package --- Summary
;;; Commentary:


;;; Code:

;; ------ 代码补全 company, auto-complete ------

;; ------ auto-complete 模式 ------

;;(ac-config-default)
;;(setq ac-use-menu-map t)
;; 使用 C-n, C-p 选择补全项
;;(define-key ac-menu-map "\C-n" 'ac-next)
;;(define-key ac-menu-map "\C-p" 'ac-previous)


;; ------ company 模式 ------

;;(add-hook 'after-init-hook 'global-company-mode)
(use-package company
  :ensure t
  :config
  (progn
    (add-hook 'after-init-hook 'global-company-mode))
	(setq company-tooltip-align-annotations t ; 注释贴右侧对齐
        company-tooltip-limit 20            ; 菜单里可选项数量
        company-show-numbers t              ; 显示编号（然后可以用 M-数字 快速选定某一项）
        ;; company-idle-delay .5               ; 延时多少秒后弹出
        ;; company-minimum-prefix-length 1     ; 至少几个字符后开始补全
        ))

;; 使用 M-n, M-p 选择补全项
 (with-eval-after-load 'company
   (define-key company-active-map (kbd "M-n") nil)
   (define-key company-active-map (kbd "M-p") nil)
   (define-key company-active-map (kbd "C-n") #'company-select-next)
   (define-key company-active-map (kbd "C-p") #'company-select-previous))


(provide 'init-company)

;;; init-company.el ends here
