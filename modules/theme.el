                                        ; set theme
(use-package catppuccin-theme
  :config
  (setq catppuccin-flavor 'mocha)
  (catppuccin-reload))

                                        ; Configure Chinese fonts
(use-package cnfonts
  :config
  (cnfonts-mode 1))
(provide 'theme)
