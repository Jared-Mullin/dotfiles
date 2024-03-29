(use-package projectile
  :straight t
  :diminish projectile-mode
  :config
  (setq projectile-completion-system 'ivy)
  (projectile-global-mode)
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  (setq projectile-project-search-path '("~/code/src"))
  (setq projectile-switch-project-action #'projectile-dired))

(use-package counsel-projectile
  :straight t
  :after projectile
  :bind
  ("C-SPC" . counsel-projectile-switch-project)
  :config
  (counsel-projectile-mode))

(provide 'workspace)
