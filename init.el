;;      _                       _       _____                          
;;     | | __ _ ___  ___  _ __ ( )___  | ____|_ __ ___   __ _  ___ ___ 
;;  _  | |/ _` / __|/ _ \| '_ \|// __| |  _| | '_ ` _ \ / _` |/ __/ __|
;; | |_| | (_| \__ \ (_) | | | | \__ \ | |___| | | | | | (_| | (__\__ \
;;  \___/ \__,_|___/\___/|_| |_| |___/ |_____|_| |_| |_|\__,_|\___|___/
;;                                                                     

(package-initialize)

;;add home directory to load path so that can be required
(add-to-list 'load-path "~/.emacs.d/lisp")

;;config cask package manager
(require 'cask "/Users/jason/.emacs.d/.cask/25.3/elpa/cask-20180119.1906/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)


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
;; lisp/keybindings.el should be the last one
(require 'key-bindings)

;; lisp/custom.el
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

