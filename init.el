(require 'package)
(package-initialize)

(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(require 'use-package)
(setq use-package-always-ensure t)
(use-package better-defaults)
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-frame-font "Fira Code-11" nil t)

                                        ; enable dashboard
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner 'logo))
(setq initial-buffer-choice (
                             lambda ()
                               (get-buffer-create dashboard-buffer-name)))

(add-to-list 'load-path "~/.emacs.d/modules")
(require 'edit)
(require 'theme)
(require 'lang)
(require 'note)
