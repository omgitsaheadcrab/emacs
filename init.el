;;; init.el --- Initialise emacs

;;; Commentary:
;; Tobias Backer Dirks
;; 15 August 2018

;; Add useful package archives
;;; Code:
(require 'package)

;; Internet repositories for new packages.
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "http://melpa.org/packages/")))

;; Actually get “package” to work.
(package-initialize)
(package-refresh-contents)

;; Start use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
;; Always install packages automatically if not already installed
(setq use-package-always-ensure t)

;; Auto update packages on start
(use-package auto-package-update
  :defer 10
  :config
  ;; Delete residual old versions
  (setq auto-package-update-delete-old-versions t)
  ;; Do not bother me when updates have taken place.
  (setq auto-package-update-hide-results t)
  ;; Update installed packages at startup if there is an update pending.
  (auto-package-update-maybe))

;; Allow package installs from source
(use-package quelpa
  :custom (quelpa-upgrade-p t "Always try to update packages")
  :config
  ;; Get ‘quelpa-use-package’ via ‘quelpa’
  (quelpa
   '(quelpa-use-package
     :fetcher git
     :url "https://github.com/quelpa/quelpa-use-package.git"))
  (require 'quelpa-use-package))

;; Load remainder of config from config.org
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;; Customization commands moved to standalone file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
(put 'upcase-region 'disabled nil)

;;; init.el ends here
