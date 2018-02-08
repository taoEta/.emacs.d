;;  _                    _     _           _ _                 
;; | | _____ _   _      | |__ (_)_ __   __| (_)_ __   __ _ ___ 
;; | |/ / _ \ | | |_____| '_ \| | '_ \ / _` | | '_ \ / _` / __|
;; |   <  __/ |_| |_____| |_) | | | | | (_| | | | | | (_| \__ \
;; |_|\_\___|\__, |     |_.__/|_|_| |_|\__,_|_|_| |_|\__, |___/
;;           |___/                                   |___/     
;;



;;key bindings for swiper plugin
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)

;;short-cut for open init file
(global-set-key (kbd "<f2>") 'open-init-file)

;;shortcut for recent files
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;shortcut for find function/variable/function-on-key
;;(global-set-key (kbd "C-h C-f") 'find-function)
;;(global-set-key (kbd "C-h C-v") 'find-variable)
;;(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;;custom key-bindings prefix C-c(ustom)

;;shortcut for find project file (base on git repository) p:project f:file
(global-set-key (kbd "C-c p f") 'counsel-git)

;;shortcut for evil-nerd-commenter
(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines);; comment or uncomment lines

;;set evil leadeer keybindings
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "sb" 'switch-to-buffer
  "kb" 'kill-buffer
  )

(provide 'key-bindings)
