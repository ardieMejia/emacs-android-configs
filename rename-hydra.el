

(defun my-rename-buffer ()
  (interactive)
  (let ((new-name (read-from-minibuffer "Enter new name for current file")))
    (rename-buffer new-name))
  )


(defhydra inside-hydra ()
  " whatever inside"
  ("," (insert ",") ",")
  ("s" (save-buffer)  "save buffer")
  ("r" (my-rename-buffer)  "rename buffer")
  ("i" (find-file "/data/data/com.termux/files/home/.emacs.d/init.el")  "init.el")
  ("c" (my-open-chrome)  "chrome")
  ("b" (my-open-bluemail)  "bluemail"))



(defhydra my-first-hydra (:color blue)
" press  to continue hydra"
("," inside-hydra/body))

(global-set-key (kbd ",") 'my-first-hydra/body)








