;;; rust  -- all configurations about rust
;;; Commentary:

(require 'ivy)
;;; Code:
(use-package lsp-ui
  :after lsp-mode
  :bind
  (("C-c r" . lsp-ui-peek-find-references)
   ("C-c d" . lsp-ui-doc-show)
   ("C-c C-c r" . lsp-rename)
   ("C-c C-c m" . lsp-ui-imenu)
   ("C-c e" . lsp-execute-code-action))
  :custom
  ((lsp-ui-sideline-show-diagnostics nil)
   (lsp-ui-sideline-show-hover nil)
   (lsp-ui-sideline-show-code-actions nil)
   (lsp-ui-sideline-update-mode nil)
   (lsp-ui-sideline-delay 0.2)
   (lsp-ui-doc-enable t)
   (lsp-ui-doc-position 'at-point)
   (lsp-ui-doc-delay 0.2)
   (lsp-ui-doc-show-with-cursor nil)
   (lsp-ui-doc-show-with-mouse t)
   (lsp-ui-imenu-window-width 50)
   (lsp-ui-imenu--custom-mode-line-format t)
   (lsp-ui-imenu-auto-refresh t))
  :ensure t)

(use-package lsp-ivy
    :ensure t
  :commands lsp-ivy-workspace-symbol)

(use-package cargo
  :ensure t)

(use-package rust-mode
  :hook ((rust-mode . cargo-minor-mode)
	 (rust-mode . ivy-mode))
  :custom
  (rust-format-on-save t)
  (setq lsp-enable-snippet nil)
  :bind (:map rust-mode-map
	      ("C-c C-c d" . lsp-rust-analyzer-open-external-docs))
  :ensure t)

(use-package rust-playground
  :ensure t)

;; (use-package dap-mode
;;   :ensure
;;   :config
;;   (dap-ui-mode)
;;   (dap-ui-controls-mode 1)

;;   ;; (require 'dap-gdb)
;;   (require 'dap-gdb-lldb)
;;   ;; installs .extension/vscode
;;   (dap-gdb-lldb-setup)
;;   (dap-register-debug-template
;;    "Rust::GDB Run Configuration"
;;    (list :type "gdb"
;;          :request "launch"
;;          :name "GDB::Run"
;; 	 :gdbpath "rust-gdb"
;;          :target nil
;;          :cwd nil)))

(provide 'rust)
;;; rust.el ends here
