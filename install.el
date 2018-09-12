:;exec emacs -batch -l   "$0" "$@" --no-site-file -q  # -*- Emacs-Lisp -*-
;;     @emacs -batch -l "%~f0"  %*  --no-site-file -q  & goto :EOF

(process-lines "mkdir" (concat (getenv "HOME") "/.emacs.d/conf"))

(mapc (lambda (path)
	(let ((target (concat (getenv "HOME") "/" (file-relative-name path))))
	  (message "%s -> %s" path target)
	  (process-lines "ln" path target)))
      (cons (expand-file-name ".emacs") (directory-files "./.emacs.d/conf/" t "[^.]")))

(require 'plugin-installation)
(install-custom-package-p)
