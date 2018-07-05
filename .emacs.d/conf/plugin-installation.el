;;; plugin-installation --- install plugin when initiliaization
;;; Commentary:

;;; Code:
(defvar must-be-installed-plugins
  '(anaconda-mode
    company
    company-anaconda
    company-c-headers
    company-shell
    company-tern
    company-web
    counsel
    counsel-gtags
    flycheck
    geiser
    ggtags
    helm
    helm-company
    ivy
    js2-mode
    magit
    multi-term
    nodejs-repl
    rainbow-delimiters
    solarized-theme
    swiper
    tern
    web-mode))

(defun install-one-plugin (plugin)
"Install a plugin name is PLUGIN."
  (if (package-installed-p plugin)
      nil
    (package-install plugin)))

(defun install-plugin-when-uninstalled (plugin-list)
"Install a list of plugin with PLUGIN-LIST."
  (if (null plugin-list)
      nil
    (progn
      (install-one-plugin (car plugin-list))
      (install-plugin-when-uninstalled (cdr plugin-list)))))

(install-plugin-when-uninstalled must-be-installed-plugins)

(provide 'plugin-installation)
;;; plugin-installation ends here
