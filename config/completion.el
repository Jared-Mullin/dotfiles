(use-package ivy
	     :straight t
	     :bind
	     ("C-x s" . swiper)
	     ("C-x C-r" . ivy-resume)
	     :config
	     (ivy-mode 1)
	     (setq ivy-use-virtual-buffers nil)
	     (define-key read-expression-map (kbd "C-r") 'counsel-expression-history))

(use-package counsel
	     :straight t
	     :bind
	     ("M-x" . counsel-M-x)
	     ("C-x C-m" . counsel-M-x)
	     ("C-x C-f" . counsel-find-file)
	     ("C-x c k" . counsel-yank-pop))

(use-package company
	     :straight t
	     :config
	     (add-hook 'after-init-hook 'global-company-mode))

(use-package which-key
  :straight t
  :defer 0
  :diminish which-key-mode
  :config
  (which-key-mode))

(provide 'completion)
