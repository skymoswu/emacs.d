(use-package org
  :ensure t
  :bind (
         ("C-c c" . org-capture)
         ("C-c a" . org-agenda))
  :hook (org-mode . visual-line-mode)
  :config
  (setq org-capture-templates
        '(
          ("j" "Journal" entry
           (file+olp+datetree "~/Documents/Notes/journal.org")
           "* %T - %^{heading} \n %?")
          ("w" "Work task" entry
           (file+headline "~/Documents/Notes/work.org" "* Tasks")
           "** TODO %?\n %u\n")))
  (setq org-agenda-files (list "~/Documents/Notes/")
        org-refile-targets '((org-agenda-files :maxlevel . 5))
        org-refile-use-outline-path 'file
        org-log-done 'time
        org-src-fontify-natively t
        org-agenda-include-diary t
        org-startup-truncated nil
        org-todo-keywords '("TODO(t)" "DOING(i!)" "DONE(d!)" "CANCELLED(c@)")
        org-todo-keyword-faces '(
                                 ("TODO" . org-warning)
                                 ("DOING" . "yellow"))))
(use-package zotxt
  :ensure t)

(use-package org-modern
  :ensure t
  :hook (
         (org-mode . org-modern-mode)
         (org-agenda-finalize . org-modern-agenda)))

(provide 'note)
