(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)
(add-hook 'prog-mode-hook 'hs-minor-mode)
(add-hook 'prog-mode-hook 'prettify-symbols-mode)

(use-package eglot
  :hook (prog-mode . eglot-ensure)
  :bind ("C-c e f" . eglot-format))

(use-package ess
  :ensure t
  :init (require 'ess-r-mode))

(use-package snakemake-mode
  :ensure t)

(provide 'lang)
