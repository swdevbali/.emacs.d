;maximize screen space
(scroll-bar-mode 0)
(menu-bar-mode 0)
(tool-bar-mode 0)

;easier back<->forward navigation using C-C LEFT, C-C RIGHT
(winner-mode 1)

;my personal preference for coding in emacs
(set-background-color "Black")
(set-foreground-color "White")

;make CTRL+C, CTRL+V as copy & paste shortcut as in Windows
(cua-mode 1)

;; auto jump
(global-set-key (kbd "C-x C-M->") 'find-tag) ; bind to some unused placeholder
(global-set-key (kbd "M-.") (kbd "C-x C-M-> <return>"))
