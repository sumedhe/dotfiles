;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
	(markdown-mode php-mode drag-stuff autopair quickrun undo-tree git-gutter helm iedit auto-complete yasnippet icomplete+))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ===============================================================

;; Package Repos
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Shortcuts
(global-set-key (kbd "<f2>") 'iedit-mode)
(global-set-key (kbd "<f5>") 'quickrun-shell)
(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "<backtab>") 'next-multiframe-window)
(global-set-key (kbd "<M-up>") 'drag-stuff-up)
(global-set-key (kbd "<M-down>") 'drag-stuff-down)
(global-set-key (kbd "M-n") 'next-multiframe-window)
(global-set-key (kbd "M-p") 'previous-multiframe-window)
(global-set-key (kbd "C-x c") 'comment-line)

;; Configs
(add-hook 'dired-mode-hook 'auto-revert-mode) ;Auto refresh dired on file change
(setq-default tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(icomplete-mode 1)
(global-auto-complete-mode t)
(yas-global-mode 1)
(global-git-gutter-mode t)
(autopair-global-mode)
(global-undo-tree-mode)
(global-linum-mode 1)
