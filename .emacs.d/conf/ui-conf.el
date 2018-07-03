;;; ui-conf -- configuration about ui
;;; Commentary:

;;; Code:
(setq show-paren-style 'parenthesis)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [ default default
     default italic
     underline success
     warning error ])
 '(ansi-color-names-vector
   [ "#2d3743"
     "#ff4242"
     "#74af68"
     "#dbdb95"
     "#34cae2"
     "#008b8b"
     "#00ede1"
     "#e1e1e0" ])
 '(column-number-mode t)
 ;; '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes (quote
   ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4"
   "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879"
   default)))
 '(inhibit-startup-screen t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(show-paren-delay 0)
 '(show-paren-style 'parenthesis)
 '(auto-image-file-mode t)
 '(global-font-lock-mode t)
 '(url-automatic-caching t)
 '(global-auto-revert-mode t)
 '(global-font-lock-mode t)
 '(column-number-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (
		:family "Fantasque Sans Mono"
		:foundry "unknown"
		:slant normal
		:weight normal
		:height 113
		:width normal)))))

(provide 'ui-conf)
;;; ui-conf ends here
