;;; init.el --- Initialise emacs

;;; Commentary:
;; Tobias Backer Dirks
;; 15 August 2018

;; Add useful package archives
;;; Code:

(setq gc-cons-threshold (* 50 1000 1000))

(require 'package)
(package-initialize)

(if (file-exists-p (expand-file-name "config.el" user-emacs-directory))
    (load-file (expand-file-name "config.el" user-emacs-directory))
  (org-babel-load-file (expand-file-name "config.org" user-emacs-directory)))

;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 10 1000 1000))

;;; init.el ends here
