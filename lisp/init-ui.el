;;ui configurations

;;not show tool bar
(tool-bar-mode -1)

;;not show scroll bar
(scroll-bar-mode -1)

;;not show menu bar
(menu-bar-mode -1)

;;show line number
(global-linum-mode t)

;;not show welcome page
(setq inhibit-splash-screen t)

;;default open with full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;set cursor type
(setq-default cursor-type 'bar)

;;show match ()
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;highlight current line
(global-hl-line-mode)


(provide 'init-ui)
