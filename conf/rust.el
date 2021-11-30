;;; rust  -- all configurations about rust
;;; Commentary:

(require 'ivy)
;;; Code:
(use-package lsp-mode
  :hook ((rust-mode . lsp))
  :commands lsp
  :ensure t)

(use-package lsp-ivy
  :ensure t)

(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)

(use-package cargo
  :ensure t)

(use-package rust-mode
  :hook ((rust-mode . cargo-minor-mode)
	 (rust-mode . ivy-mode))
  :custom
  (rust-format-on-save t)
  :ensure t)

(provide 'rust)
;;; rust.el ends here
