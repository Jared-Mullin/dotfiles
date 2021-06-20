(use-package toml-mode :straight t)

(use-package rust-mode
  :straight t
  :hook ((rust-mode . lsp-deferred)
         (before-save . lsp-format-buffer)
         (before-save . lsp-organize-imports))
        :config
          ; (setq lsp-prefer-capf t)
          ; (setq lsp-completion-provider :capf)
          (setq lsp-completion-enable t))

;; Add keybindings for interacting with Cargo
(use-package cargo
  :straight t
  :hook (rust-mode . cargo-minor-mode))

(use-package flycheck-rust
  :straight t
  :config (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))


(provide 'lang-rust)

