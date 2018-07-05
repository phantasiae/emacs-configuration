;;; mode-hook --- the configuration about add mode hook
;;; Commentary:

(require 'web-mode)
(require 'js2-mode)
(require 'company)
(require 'tern)

;;; Code:

(defvar flycheck-check-syntax-automatically)

;; js2
(add-hook 'js2-mode-hook
	  (lambda ()
	    (company-mode t)
	    (tern-mode t)))

;; web mode
(add-hook 'web-mode-hook
	  (lambda ()
	    (company-mode)
	    (flycheck-mode)
	    (eldoc-mode t)
	    (when (string-equal "tsx" (file-name-extension buffer-file-name))
	      (tide-setup)
	      (setq flycheck-check-syntax-automatically '(save mode-enabled))
	      (tide-hl-identifier-mode t))))

;; jsonmode
(add-hook 'json-mode-hook
	  (lambda ()
	    (company-mode)
	    (flycheck-mode)))

;; elastic serach mode
(add-hook 'es-mode-hook
	  (lambda ()
	    (company-mode)))

;; scheme
(add-hook 'scheme-mode-hook
	  (lambda ()
	    (company-mode)
	    (rainbow-delimiters-mode)
	    (geiser-mode t)
	    (run-geiser)))

;; somed lisp mode
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (rainbow-delimiters-mode)
	    (flycheck-mode)
	    (company-mode)))

(add-hook 'lisp-mode-hook
	  (lambda ()
	    (rainbow-delimiters-mode)
	    (company-mode)))
(add-hook 'lisp-interaction-mode-hook
	  (lambda ()
	    (rainbow-delimiters-mode)
	    (company-mode)))

;; c
(add-hook 'c-mode-hook
	  (lambda ()
	    (company-mode)
	    ;; (helm-mode)
	    ;; (helm-gtags-mode)
	    (semantic-mode)))

;; python
(add-hook 'python-mode-hook
	  (lambda ()
	    (company-mode)
	    (anaconda-mode)
	    ;; (eldoc-mode t)
	    ;; (py-autopep8-enable-on-save)
	    (flycheck-mode)))

;; org
(add-hook 'org-hook
	  (lambda ()
	    (company-mode)))

;; shell
(add-hook 'shell-script-mode
	  (lambda ()
	    (company-mode t)))

;; before save
(add-hook 'before-save-hook
	  (lambda ()
	    (tide-format-before-save)))

(provide 'mode-hook)
;;; mode-hook ends here
