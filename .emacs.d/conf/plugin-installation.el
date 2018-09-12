;;; plugin-installation --- install plugin when initiliaization   -*- lexical-binding:t -*-
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
    magit
    multi-term
    nodejs-repl
    rainbow-delimiters
    solarized-theme
    swiper
    tern
    web-mode))


(defun install-custom-package-p ()
  "Install all defined package."
  (mapc 'package-install must-be-installed-plugins))

(provide 'plugin-installation)
;;; plugin-installation ends here
