;;; rust  -- all configurations about rust
;;; Commentary:

;;; Code:
(use-package lsp-mode
  :hook ((rust-mode . lsp))
  :commands lsp
  :ensure t)

(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)

(use-package rust-mode
  :ensure t)



(provide 'rust)
;;; rust.el ends here
