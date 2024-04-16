;;; golang  -- all configurations about go
;;; Commentary:

;;; Code:
(add-to-list 'exec-path "/home/wudun/go/bin")

(use-package go-mode
  :hook ((go-mode . ivy-mode)
	 ;; (go-mode . lsp-deferred)
	 ;; (before-save-hook . gofmt-before-save)
	 )
  ;; :bind (:map go-mode-map
  ;; 	      ("C-c e" . lsp-execute-code-action))
  :config
  (defun my/go-mode-setup ()
    "Basic Go mode setup."
    (add-hook 'before-save-hook #'lsp-format-buffer t t)
    (add-hook 'before-save-hook #'lsp-organize-imports t t))
  (add-hook 'go-mode-hook #'my/go-mode-setup)
  :ensure t)



(use-package go-impl
  :ensure t)

(use-package go-eldoc
  :ensure t)

(provide 'golang)
;;; golang.el ends here
