(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("7b37f10643dd2fb61b5e1d8c368ca92b022c62ae404e9d0963921518f1108cba" default)))
 '(package-selected-packages
   (quote
    (flycheck markdown-mode org-pdfview flx-ido projectile org-plus-contrib org-pdftools company-jedi irony-eldoc yasnippet company-irony irony pretty-mode expand-region latex org-id swiper popup-kill-ring eterm-256color exec-path-from-shell spaceline-all-the-icons spaceline all-the-icons company dashboard sudo-edit ido-vertical-mode org org-bullets beacon which-key use-package magit hlinum ## auctex)))
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
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 113 :width normal)))))

;; Emacs keeps warning about downcase-region, added this by itself.
(put 'downcase-region 'disabled nil)
