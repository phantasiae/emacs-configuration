;;; mode-binding -- what mode with use file
;;; Commentary:

;;; Code:

;; html
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; js
;;(add-to-list 'auto-mode-alist '("\\.js?\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))

;; css
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))

;; json
(add-to-list 'auto-mode-alist '("\\.json?\\'" . web-mode))



;; (flycheck-add-mode 'typescript-tslint 'web-mode)

(provide 'mode-binding)
;;; mode-binding ends here
