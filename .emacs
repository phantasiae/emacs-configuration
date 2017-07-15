;;; emacs --- emacs configuration
;;; Commentary:

(require 'package)


;;; Code:

;; melpa
(setq package-archives
      '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
	("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/conf/")
(setq-default flycheck-emacs-lisp-load-path load-path)

(require 'plugin-installation)
(require 'ui-conf)
(require 'key-binding)
(require 'mode-hook)
(require 'mode-binding)
(require 'global-setting)
(require 'mode-custom-setting)

;;; .emacs ends here

