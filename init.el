;; ========================================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(package-selected-packages
   '(hydra ivy-prescient prescient counsel ivy use-package org-bullets org modus-themes helm)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(setq package-enable-at-startup nil)




(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)


;; if not yet installed, install package use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))



;; ========================================
;; load org package and our emacs-config.org file
(require 'org)

;; ========================================
;; https://github.com/sabof/org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; ========================================
;; https://emacs.stackexchange.com/questions/55298/org-mode-collapse-expand-section-on-click
(require 'org-mouse)



(require 'ox-publish)





(require 'modus-themes) ; OR for the built-in themes: (require-theme 'modus-themes)

;; ;; Add all your customizations prior to loading the themes
;; (setq modus-themes-italic-constructs t
;;       modus-themes-bold-constructs nil)

;; ;; Maybe define some palette overrides, such as by using our presets
;; (setq modus-themes-common-palette-overrides
;;       modus-themes-preset-overrides-intense)

;; ;; Load the theme of your choice:
(load-theme 'modus-operandi :no-confirm)









;; ========================================
;; publishing





(load "~/.emacs.d/sensible-default.el")
(load "~/.emacs.d/mode-hooks.el")
(load "~/.emacs.d/my-navigation.el")
(load "~/.emacs.d/rename-hydra.el") 


(put 'dired-find-alternate-file 'disabled nil)




