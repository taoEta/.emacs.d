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

(provide 'better-defaults)
