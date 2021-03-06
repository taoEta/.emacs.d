;;  _          _   _                     _       __             _ _       
;; | |__   ___| |_| |_ ___ _ __       __| | ___ / _| __ _ _   _| | |_ ___ 
;; | '_ \ / _ \ __| __/ _ \ '__|____ / _` |/ _ \ |_ / _` | | | | | __/ __|
;; | |_) |  __/ |_| ||  __/ | |_____| (_| |  __/  _| (_| | |_| | | |_\__ \
;; |_.__/ \___|\__|\__\___|_|        \__,_|\___|_|  \__,_|\__,_|_|\__|___/
;;



;;diable error sounds
(setq ring-bell-function 'ignore)

;;set no backup file
(setq make-backup-files nil)
(setq auto-save-default nil)

;;short cut
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("j" "jason")
					    ))

;;show recent file
(recentf-mode 1)
(setq recentf-max-menu-items 15)

;;delete selection
(delete-selection-mode 1)

;;replace Yes/No with y/n
(fset 'yes-or-no-p 'y-or-n-p)

;;only open one buffer in dired mode
(put 'dired-find-alternate-file 'disabled nil)

;; lazy load
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(provide 'better-defaults)
