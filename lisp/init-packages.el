;;;;;;;;;;;;;;;;;;;;;;;;;;; package

;; cl - Common Lisp Extension
(require 'cl)

(when (>= emacs-major-version 24)
    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

;; Add Packages
(defvar jason/packages '(
		;;evil
		evil
		;;evil-leader
		evil-leader
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		popwin
		;;show all avaliable keys for current prefix
		which-key
		;; --- Major Mode ---

		;; --- Minor Mode ---
		;;for mac to locate binary folder:/usr/local/bin
		exec-path-from-shell
		;;for mac open file in finder
		reveal-in-osx-finder
		;;commentor
		evil-nerd-commenter
		;; --- Themes ---
		;; theme
		solarized-theme
		) "Default packages")
(setq package-selected-packages jason/packages)

(defun jason/packages-installed-p ()
     (loop for pkg in jason/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

(unless (jason/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg jason/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; config plugins          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;enable evil-leader
(require 'evil-leader)
(global-evil-leader-mode)

;;enable evil
(evil-mode 1)

;;config swiper (see key bindings)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


;;config smartparens
;;(require 'smartfparens-config) ;;auto load so don't need require
;;(smartparens-global-mode t)

;;config popwin
(require 'popwin)
(popwin-mode t)

;;config company
(global-company-mode t)

;;config which-key-mode
(which-key-mode 1)

;;config theme
(load-theme 'solarized-dark t)


(provide 'init-packages)
