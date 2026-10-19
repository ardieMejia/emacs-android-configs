;; ==================== from Sandeep
(recentf-mode 1)
(setq recentf-max-menu-items 20)
(setq recentf-max-saved-items 20)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)


;; ========== my-other-window
(global-set-key (kbd "M-`") 'other-window)



;; ========== mostly ivy & counsel stuff
(ivy-mode)
(ivy-prescient-mode)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-s") 'swiper)




;; ==================== my select whole line
(defun my-select-whole-line ()
(interactive)
    (progn
  (set-mark-command (beginning-of-line))
  (end-of-line)))


(global-set-key (kbd "C-c l") 'my-select-whole-line)




;; ==================== opening chrome


(defun my-open-chrome ()
  (interactive)
  (shell-command "am start --user 0 -n com.android.chrome/com.google.android.apps.chrome.Main")
  )

(global-set-key (kbd "C-c m o c") 'my-open-chrome)




(defun my-open-bluemail ()
  (interactive)
  (shell-command "am start --user 0 -n me.bluemail.mail/com.trtf.blue.activity.Accounts")
  )

(global-set-key (kbd "C-c m o b") 'my-open-bluemail)





