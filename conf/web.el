;;; web.el -- configurate all about web
;;; Commentary:

;;; Code:
(use-package tide
  :after (web-mode company flycheck)
  :hook ((web-mode . tide-setup)
	 (web-mode . tide-hl-identifier-mode)
	 (before-save . tide-format-before-save))
  :ensure t)

;; (use-package typescript
;;   :mode "\\.ts\\'"
;;   :interpreter "ts-node"
;;   :ensure t)

(use-package web-mode
  :mode
  (("\\.ts\\'"  . web-mode)
   ("\\.tsx\\'" . web-mode)
   ("\\.js\\'"  . web-mode)
   ("\\.jsx\\'" . web-mode))
  ;; :ensure-system-package
  :custom
  (web-mode-mark-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-code-indent-offset 2)
  :ensure t)

(provide 'web)
;;; web.el ends here
