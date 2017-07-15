;;; mode-custom-setting --- emacs configuration
;;; Commentary:

(require 'js2-mode)
(require 'web-mode)

;;; Code:
(custom-set-variables

 ;; web-mode & js2-mode & coffee
 '(web-mode-markup-indent-offset 2)
 '(web-mode-css-indent-offset 4)
 '(web-mode-code-indent-offset 2)
 '(web-mode-markup-indentation 2)
 '(coffee-tab-width 2)
 '(coffee-indent-like-python-mode t)
 '(js2-allow-member-expr-as-function-name t)
 '(js2-include-node-externs t)
 '(js-indent-line 2)

 ;; company
 '(company-show-numbers t)
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 2)
 '(company-tern-property-marker "")

 )

;; set web mode use jsx
(web-mode-set-content-type "jsx")

(provide 'mode-custom-setting)
;;; mode-custom-setting ends here
