(setq make-backup-files                  nil
      use-package-always-ensure          t)

(global-display-line-numbers-mode)
(show-paren-mode 1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Display current column
(setq column-number-mode t)

;; Disable Tabs
(setq-default indent-tabs-mode nil)

(provide 'base)
