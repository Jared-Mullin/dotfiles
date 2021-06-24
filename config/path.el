(use-package exec-path-from-shell
  :straight t
  :init (exec-path-from-shell-initialize))

(add-to-list 'exec-path "~/go/bin")

(provide 'path)
