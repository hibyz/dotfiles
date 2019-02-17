
;; cask & pallet

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize) 
(require 'pallet)
(pallet-mode t)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.dotfiles/.emacs.d/inits/")
(setq init-loader-show-log-after-init t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (python-mode web-mode use-package undo-tree smex smartparens py-yapf prodigy popwin pallet nyan-mode multiple-cursors magit init-loader idle-highlight-mode helm-swoop helm-describe-modes helm-descbinds flycheck-cask expand-region exec-path-from-shell elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
