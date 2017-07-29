;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

;;add home directory to load path so that can be required
(add-to-list 'load-path "~/.emacs.d/lisp")

;;def function for open init file
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; insert custom config before require    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; lisp/init-packages.el
(require 'init-packages)
;; lisp/init-ui.el
(require 'init-ui)
;; lisp/better-defaults.el
(require 'better-defaults)
;; lisp/keybindings.el
(require 'key-bindings)
;; lisp/custom.el
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

