;;; private/my/+bindings.el -*- lexical-binding: t; -*-

;; (setq winum-auto-assign-0-to-minibuffer t)
;; (add-to-list 'winum-assign-functions #'winum-assign-0-to-treemacs)

(global-set-key (kbd "C-c C-c") #'comment-region)
(global-set-key (kbd "C-c C-u") #'uncomment-region)
(global-set-key (kbd "C-c C-b") #'better-jumper-jump-backward)

(map!
 (:map override
   ;; swiper
   "C-s" #'swiper
   "C-c C-j" #'lsp-find-definition
   "C-c C-i" #'lsp-find-implementation
   "C-c C-r" #'lsp-find-references
   "M-1" #'winum-select-window-1
   "M-2" #'winum-select-window-2
   "M-3" #'winum-select-window-3
   "M-4" #'winum-select-window-4
   "M-5" #'winum-select-window-5
   "M-TAB" #'ray/alternate-window
   )
 )

(map!
 (:map doom-leader-map
   "TAB" #'ray/alternate-buffer
   (:prefix ("b". "buffer")
     "b" #'helm-mini
     "k" #'kill-buffer
     )
   (:prefix ("g". "magit")
     "g" #'magit-status
     )
   )
 )

;; enable winum mode
(winum-mode)
(define-key winum-keymap (kbd "M-0") #'treemacs-select-window)
