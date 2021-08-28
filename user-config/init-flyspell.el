;;; package --- Summary
;;; Commentary:


;;; Code:

;;; ------ init-flyspell ------

(use-package flyspell
  :custom
	(if (eq system-type 'windows-nt)
			(progn
			 (add-to-list 'exec-path "C:/msys64/mingw64/bin/")
			 (setq ispell-program-name "aspell")
			 (setq ispell-personal-dictionary "c:/msys64/mingw64/lib/aspell-0.60/en_GB"))
		(progn
			(ispell-program-name "aspell")
			;; Default dictionary. To change do M-x ispell-change-dictionary RET.
			(ispell-dictionary "en_GB-ise-wo_accents")
			(ispell-program-name "/usr/bin/aspell")))
	:config
  ;; (define-key flyspell-mode-map [down-mouse-3] 'flyspell-correct-word)
  (add-hook 'text-mode-hook 'flyspell-mode)
  ;; Enable Flyspell program mode for emacs lisp mode, which highlights all misspelled words in comments and strings.
  (add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode))

(provide 'init-flyspell)

;;; init-spellcheck.el ends here
