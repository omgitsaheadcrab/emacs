(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (flx-ido projectile org-plus-contrib org-pdfview org-pdftools company-jedi irony-eldoc yasnippet-snippets yasnippet company-irony irony pretty-mode expand-region latex color-theme org-id swiper popup-kill-ring eterm-256color exec-path-from-shell spaceline-all-the-icons spaceline all-the-icons company dashboard sudo-edit ido-vertical-mode org org-bullets beacon which-key use-package magit hlinum pdf-tools ## auctex)))
 '(preview-gs-options
   (quote
    ("-q" "-dNOSAFER" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4")))
 '(projectile-mode t nil (projectile))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 90 :width normal)))))

;; Emacs keeps warning about downcase-region, added this by itself.
(put 'downcase-region 'disabled nil)
