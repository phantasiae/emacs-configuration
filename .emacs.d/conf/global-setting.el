;;; global-setting --- emacs configuration
;;; Commentary:

;;; Code:


(custom-set-variables
 '(scheme-program-name "guile")
 '(visible-bell t)

 ;; semantic
 '(semantic-default-submodes
   (quote
    (global-semantic-decoration-mode
     global-semantic-idle-completions-mode
     global-semantic-idle-scheduler-mode
     global-semanticdb-minor-mode
     global-semantic-idle-summary-mode
     global-semantic-mru-bookmark-mode)))
 '(semantic-idle-scheduler-idle-time 3)
 )


(add-to-list 'company-backends 'company-gtags)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-backends 'company-semantic)
;; (add-to-list 'company-backends '(company-tern :with company-dabbrev-code))
(add-to-list 'company-backends 'company-tern)
(add-to-list 'company-backends 'company-anaconda)
;; (add-to-list 'company-backends '(company-jedi company-files))
;; (add-to-list 'company-backends 'geiser-company-backend)
(add-to-list 'company-backends 'company-shell)
;; (add-to-list 'company-backends 'es-company-backend)
(add-to-list 'company-backends 'company-tide)

(provide 'global-setting)
;;; global-setting.el ends here
