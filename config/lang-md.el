(use-package markdown-mode
  :straight t
  :mode "\\.md\\'"
  :init 
  (setq markdown-command "multimarkdown"))

(provide 'lang-md)
