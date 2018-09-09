;;; install --- install configuration
;;; Commentary:


;;; Code:
(defvar to-dot-emacs-installed-file-path (expand-file-name ".emacs"))
(defvar dot-emacs-file-path (concat (getenv "HOME") "/" ".emacs"))

(process-lines "ln" to-dot-emacs-installed-file-path dot-emacs-file-path)
(process-lines "mkdir" (concat (getenv "HOME") "/.emacs.d/conf"))



(mapc (lambda (path)
	  (let ((target (concat (getenv "HOME") "/" (file-relative-name path))))
	    (process-lines "ln" path target)))
      (directory-files "./.emacs.d/conf/" t "[^.]"))

(provide 'install)
;;; install.el ends here
