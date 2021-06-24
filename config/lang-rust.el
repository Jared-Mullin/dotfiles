(use-package toml-mode :straight t)

(setq lsp-rust-server 'rust-analyzer)

(use-package rust-mode
  :straight t
  :hook ((rust-mode . lsp-deferred)
         (before-save . lsp-format-buffer)
         (before-save . lsp-organize-imports)))

;; Add keybindings for interacting with Cargo
(use-package cargo
  :straight t
  :hook (rust-mode . cargo-minor-mode))

(use-package flycheck-rust
  :straight t
  :config (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(provide 'lang-rust)

