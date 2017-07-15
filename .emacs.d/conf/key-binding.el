;;; package -- configuration about key binding
;;; Commentary:

(require 'company)

;;; Code:

;; ibuffer replace buffer menu
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; ivy-mode
(ivy-mode)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key "\C-x\M-s" 'swiper)
;;(global-set-key (kbd "C-c C-r") 'ivy-resume)
;;(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)

;; company
(define-key company-mode-map (kbd "C-\\") 'company-complete)

;; neotree
(global-set-key (kbd "C-\'") 'neotree-toggle)

;; youdao-dictionary
;; (global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point)

(provide 'key-binding)
;;; key-binding ends here
