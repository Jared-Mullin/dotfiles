(use-package flycheck
  :straight t
  :init (global-flycheck-mode))

(use-package lsp-mode
  :straight t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((go-mode . lsp-deferred)
	 (rust-mode . lsp-deferred)
    (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :straight t
  :hook (lsp-mode . lsp-ui-mode)
  :custom
  (lsp-ui-doc-position 'bottom))

(use-package lsp-ivy
  :straight t
  :commands lsp-ivy-workspace-symbol)

(use-package lsp-treemacs
  :straight t
  :commands lsp-treemacs-errors-list)

(use-package company-lsp
  :straight t
  :commands company-lsp)

(use-package yasnippet
  :straight t
  :commands yas-minor-mode
  :hook ((go-mode . yas-minor-mode)
	 (rust-mode . yas-minor-mode)))

(provide 'lang)
