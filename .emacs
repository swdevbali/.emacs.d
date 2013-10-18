(add-to-list 'load-path "~/.emacs.d/")
;(defun toggle-full-screen ()
;  "Toggles full-screen mode for Emacs window on Win32."
;  (interactive)
;  (shell-command "~/emacs_fullscreen.exe"))

(defun toggle-bars ()
  "Toggles bars visibility."
  (interactive)
  (menu-bar-mode)
;  (tool-bar-mode)
  (scroll-bar-mode))

(defun toggle-full-screen-and-bars ()
  "Toggles full-screen mode and bars."
  (interactive)
  (toggle-bars)
  (toggle-full-screen))
;(toggle-full-screen)
(global-set-key [f11] 'toggle-full-screen-and-bars)
(setq is-windows (string= system-type "windows-nt"))
;(require 'dosbat)
;(require 'cygwin-mount)
;(setq auto-mode-alist (append
;                   '((".*\\.bat\\'" . bat-mode))
;                   auto-mode-alist)
;)
(menu-bar-mode 0)
;(defun gloft-compile-only ()
;  (interactive)
;  (shell-command "cd ~/Training/GloftTEST/trunk/;~/Training/GloftTEST/trunk/make.bat compile exit skip-resource"))
;(defun gloft-compile ()
;  (interactive)
;  (shell-command "cd ~/Training/GloftTEST/trunk/;~/Training/GloftTEST/trunk/make.bat compile"))
;(defun gloft-run ()
;  (interactive)
;  (shell-command "cdf ~/Training/GloftTEST/trunk/;~/Training/GloftTEST/trunk/make.bat run"))
(global-set-key "\M-f" 'menu-bar-open)
(global-set-key [C-o] 'find-file)
(global-set-key [C-s] 'save-buffer)
;(global-set-key [C--] 'shrink-window)
;(global-set-key [C-+] 'enlarge-window)
(global-set-key [f5] 'buffer-menu)
(global-set-key [f8] 'org-export-as-html-and-open);
;(global-set-key [f9] 'gloft-compile-only)
;(global-set-key [f10] 'gloft-compile)
;(global-set-key [f11] 'gloft-run)
(global-set-key [C-f4] 'kill-buffer)
(global-set-key [f3] 'findr-search)
(global-set-key [f7] 'eshell)
;(global-set-key [f8] 'dired)
(global-set-key [C-f12] 'delete-other-windows)
;(global-set-key [C-f11] 'winner-undo)


;(global-set-key "\M-a"  'windmove-left)
;(global-set-key "\M-w"    'windmove-up)
;(global-set-key "\M-d" 'windmove-right)
;(global-set-key "\M-s"  'windmove-down)
(global-set-key "\M-|" 'split-window-horizontally)
;(global-set-key "\M-m" 'end-of-line)
;(global-set-key "\M-n" 'beginning-of-line)
;(global-set-key "\C-Z" nil)
;(global-set-key "\M- " 'hippie-expand)
;(globat-set-key (kbd )
(setq-default indent-tabs-mode nil)
(windmove-default-keybindings 'meta)
;(display-time)
;(autoload 'hide-mode-line "hide-mode-line" nil t)
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/darkroom-mode")
;(require 'darkroom-mode)
;(darkroom-mode)
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/company")
;(autoload 'company-mode "company" nil t)
(setq scroll-preserve-screen-position t)
;(autoload 'psvn "psvn" nil t)
(when (fboundp 'winner-mode)
  (winner-mode 1))
;(tool-bar-mode 0)
;(scroll-bar-mode 0)

(add-hook 'comint-output-filter-functions
    'shell-strip-ctrl-m nil t)
(add-hook 'comint-output-filter-functions
    'comint-watch-for-password-prompt nil t)
;(setq explicit-shell-file-name "bash.exe")
;; For subprocesses invoked via the shell
;;(e.g., "shell -c command")
;(setq shell-file-name explicit-shell-file-name)

;(if is-windows 
;    (progn 
;      (add-hook 'comint-output-filter-functions
;                'shell-strip-ctrl-m nil t)
;      (add-hook 'comint-output-filter-functions
;                'comint-watch-for-password-prompt nil t)
;      (setq explicit-shell-file-name "C:/Development/Tools/Cygwin/bin/bash.exe")
 ;(setq shell-file-name explicit-shell-file-name))
;(setq explicit-shell-file-name "C:/Development/Tools/Cygwin/bin/bash.exe")
;(setq is-black 1)
(set-background-color "Black")
(set-foreground-color "White")

(set-cursor-color "White")
;(require 'highlight-current-line)
;(highlight-current-line-on t)
(global-hl-line-mode 0)
;(set-face-background 'hl-line "PeachPuff4")
(setq c-default-style "bsd"
      c-basic-offset 4)
;(iswitchb-mode 1)
; (add-hook 'term-setup-hook
 ;              #'(lambda () (w32-send-sys-command ?\xF030)))
(blink-cursor-mode 0)
(add-to-list 'auto-mode-alist '("\\.hxx\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . html-mode))
(desktop-save-mode 0)
(require 'findr)
(cua-mode 1)
(global-set-key [C-f3] 'goto-line)
(ido-mode 1)
(global-font-lock-mode 1)
;(semantic-mode 1)
;(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
; '(blink-cursor-mode nil)
; '(cua-mode t nil (cua-base))
; '(display-time-mode t)
; '(menu-bar-mode nil))
;(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 ;'(default ((t (:inherit nil :stipple nil :background "Black" :foreground "White" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "raster" :family "Fixedsys")))))

(defun kill-other-buffers ()
    "Kill all other buffers."
    (interactive)
    (mapc 'kill-buffer 
          (delq (current-buffer) 
                (remove-if-not 'buffer-file-name (buffer-list)))))
(fset 'yes-or-no-p 'y-or-n-p)
(set-default 'fill-column 80)
(setq visible-bell nil)
;(visual-line-mode nil)
;(set-face-foreground 'font-lock-comment-face "green")

(defun insert-gettersetter (type field)
  "Inserts a Java field, and getter/setter methods."
  (interactive "MType: \nMField: ")

  (let ((oldpoint (point))
        (capfield (concat (capitalize (substring field 0 1)) (substring field 1)))
        )
    (insert (concat "public " type " get" capfield "()\n"
                    "{\n"
                    "    return this." field ";\n"
                    "}\n\n"
                    "public void set" capfield "(" type " " field ")\n"
                    "{\n"
                    "    this." field " = " field ";\n"
                    "}\n"
                    ))
    (c-indent-region oldpoint (point) t)
    )  
  )

(defun my-ant-deploy ()
  (interactive)
  (unless (get-buffer "CerdasCAT")
(shell (get-buffer-create "CerdasCAT")))
  (process-send-string "CerdasCAT" "e:\ncd E:\\_SWDEV\\GO\\25.RUK3\\work\\CerdasCAT\nant deploy\n"))
(global-set-key [f10] 'my-ant-deploy)
(defun my-tomcat ()
  (interactive)
  (unless (get-buffer "Tomcat")
(shell (get-buffer-create "Tomcat")))
  (process-send-string "Tomcat" "c:\ncd \"C:\\Program Files\\Apache Software Foundation\\Apache Tomcat 6.0.14\\bin\"\ncatalina.bat run\n"))
(global-set-key [f9] 'my-tomcat)
(setq backup-directory "e:/.backup")
;; adjust this path:
(add-to-list 'load-path "c:/development/tools/emacs-23.2/site-lisp/jabber")
;(require 'jabber-autoloads)
(setq c-f12-winner-undo t)

;(define-key (current-global-map) [f12]
;  (lambda() 
;    (interactive) 
;    (if c-f12-winner-undo 
;        (winner-undo)
;      (delete-other-windows))
;    (setq c-f12-winner-undo (not c-f12-winner-undo))))
;(defun swdev-toggle-sole-window ()
;  (interactive)
;  (if (cdr (window-list))
;      (delete-other-windows)
;    (winner-undo)))
;(global-set-key (kbd "<f12>") 'swdev-toggle-sole-window)

(defun delete-other-window-or-winner-undo ()
  "call delete-other-window on first invocation and winner-undo on subsequent invocations"
  (interactive)
  (if (eq this-command last-command) 
      (winner-undo)
    (delete-other-windows)))

(global-set-key (kbd "<f12>") 'delete-other-window-or-winner-undo)
;(set-face-foreground 'font-lock-comment-face "cyan")

(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
(defun toggle-window-dedicated ()

"Toggle whether the current active window is dedicated or not"

(interactive)

(message

(if (let (window (get-buffer-window (current-buffer)))

   (set-window-dedicated-p window 

	(not (window-dedicated-p window))))

"Window '%s' is dedicated"

"Window '%s' is normal")
(current-buffer)))
(global-set-key [pause] 'toggle-window-dedicated)
(show-paren-mode 1)
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . html-mode))
(add-to-list 'load-path
             "~/.emacs.d/plugins")
(require 'yasnippet)
(set-face-background 'region "green")
(set-face-foreground 'font-lock-function-name-face "lightgreen")
(set-face-foreground 'font-lock-string-face "lightgray")
;(global-visual-line-mode t)
(require 'php-mode)
(setq backup-directory-alist `(("." . "~/.saves")))

; http://web-mode.org/
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))


(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)  
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-style-padding 4)  
  (setq web-mode-script-padding 4)  
  (setq web-mode-block-padding 0)
)
(add-hook 'web-mode-hook  'web-mode-hook)

;my preferred working space : LARGER SCREEN
;(split-window-horizontally)
;(other-window 1)
;(calendar)
;(other-window 2) ;main code
;(split-window-vertically)
;(eshell)
;(other-window 1)
;(find-file "docs/steps.org")
;(other-window 2)

;my preferred working space : smaller
;(split-window-horizontally)
;(split-window-vertically)
;(find-file "docs/steps.org")
;(other-window 1)
;(eshell)
;(other-window 1)


;wordpress
(setq load-path (cons "~/.emacs.d/org2blog/" load-path))
  (require 'org2blog-autoloads)
(load-file "~/wp-settings.el")