;;not show tool bar

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;plugin package
 (when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar my/packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		;;smex
		swiper
		counsel
		smartparens
		popwin
		;; --- Major Mode ---
		;;js2-mode
		;; --- Minor Mode ---
		;;for mac to locate binary folder:/usr/local/bin
		exec-path-from-shell
		;; --- Themes ---
		;; theme
		solarized-theme
		) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;plugin package

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages
   (quote
    (0blayout company hungry-delete swiper counsel smartparens js2-mode nodejs-repl exec-path-from-shell solarized-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;custom config

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; config plugins          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;config smex plugin
;;(global-set-key (kbd "M-x") 'smex)
;;(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
;;(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;config swiper plug
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)

;;config smartparens plugin
(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

;;config popwin plugin
(require 'popwin)
(popwin-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; config plugins    end   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;not show tool bar
(tool-bar-mode -1)

;;not show scroll bar
(scroll-bar-mode -1)

;;not show menu bar
;(menu-bar-mode -1)

;;disable electric indent mode

;;show line number
(global-linum-mode t)

;;not show welcome page
(setq inhibit-splash-screen t)

;;short-cut for init file
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-init-file)

;;enable global company mode
(global-company-mode t)

;;set cursor type
(setq-default cursor-type 'bar)

;;show match ()
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;highlight current line
(global-hl-line-mode)

;;set no backup file
(setq make-backup-files nil)
(setq auto-save-default nil)
