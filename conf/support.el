;;; suport  -- the support package configurate here
;;; Commentary:
;;; has:
;;; - company
;;; - rainbow-delimiters
;;; - flycheck


;;; Code:
(use-package ivy
  :ensure t)

(use-package counsel
  :ensure t
  :bind
  (("C-x c s" . swiper-isearch)
   ("C-x C-f" . counsel-find-file)
   ("M-x" . 'counsel-M-x)
   ("M-y" . 'counsel-yank-pop)
   ("C-c i f" . 'counsel-describe-function)
   ("C-c i v" . 'counsel-describe-variable)
   ("C-c i l" . 'counsel-find-library)
   ("C-c i i" . 'counsel-info-lookup-symbol)
   ("M-y" . 'counsel-yank-pop)
   ("C-x M-s" . swiper)))



(use-package company-mode
  :hook
  emacs-lisp-mode
  typescript-mode
  web-mode
  :custom
  (push 'company-lsp company-backends)
  :bind
  (("C-\\" . company-complete))
  :ensure company)

(use-package rainbow-delimiters-mode
  :hook
  emacs-lisp-mode
  lisp-interaction-mode
  lisp-mode
  :ensure rainbow-delimiters)

(use-package flycheck-mode
  :hook
  emacs-lisp-mode
  lisp-interaction-mode
  lisp-mode
  web-mode
  typescript-mode
  :ensure flycheck)

(use-package ibuffer
  :bind
  ("C-x C-b" . 'ibuffer))

(use-package tao-theme
  :ensure t)

(use-package indium
  :ensure t)

(use-package yaml-mode
  :ensure t)

(use-package magit
  :ensure t)

(use-package gitlab-ci-mode
  :ensure t)

(use-package gitlab-ci-mode-flycheck
  :ensure t)

(use-package dockerfile-mode
  :ensure t)

(use-package lsp-mode
  :hook ((rust-mode . lsp)
	 (go-mode . lsp))
  :commands lsp
  :ensure t)

(use-package yasnippet
  :ensure
  :config
  (yas-reload-all)
  (add-hook 'rust-mode-hook 'yas-minor-mode)
  (add-hook 'text-mode-hook 'yas-minor-mode))

(require 'ivy)
;; (require 'counsel)
(require 'company)
(require 'rainbow-delimiters)
(require 'flycheck)
(require 'ibuffer)

(provide 'support)
;;; support.el ends here
