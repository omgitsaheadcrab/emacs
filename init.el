;;; init.el
; Tobias Backer Dirks
; 15 August 2018

;; Add useful package archives
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

;; Start use-package 
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Load remainder of config from config.org
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;; Customization commands moved to standalone file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
