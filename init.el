;;; init  -- entryporinter all configurations
;;; Commentary:

(require 'package)


;;; Code:
(setq package-archives
      '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
	("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))


(add-to-list 'load-path "~/.emacs.d/conf/")

(require 'use-package)
(require 'support)
(require 'web)
(require 'android)



;;; init.el ends here
