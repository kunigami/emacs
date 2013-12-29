(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Show matching parent
(show-paren-mode t)

;; Show trailing whitespace
(set-face-background 'trailing-whitespace "#900000")
(setq-default show-trailing-whitespace t)
;; Remove trailing whitespace upon saving
(add-hook 'write-file-hooks 'delete-trailing-whitespace)

;; Disable bip sound
(setq ring-bell-function 'ignore)

;; C-x o is not enough when we have more than two buffers openend
;; because it only go forward. This adds C-x p to go backwards.
(global-set-key (kbd "C-x p") 'previous-multiframe-window)

;; Emacs 24 supports a basic set of themes
(load-theme 'tango-dark)

;; Custom settings for working with Agda programming language
(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))