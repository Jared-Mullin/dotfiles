(use-package go-mode
  :straight t
  :hook ((go-mode . lsp-deferred)
         (before-save . gofmt-before-save)
         (before-save . lsp-organize-imports)))

(provide 'lang-go)
