(use-package yaml-mode
  :straight t
  :hook ((yaml-mode . lsp-deferred)
         (before-save . lsp-format-buffer)
         (before-save . lsp-organize-imports)))

(provide 'lang-yaml)
