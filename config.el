;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
(load! "+misc")
(load! "+bindings")

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Ray Chen"
      user-mail-address "rayunstop@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 14))
;; (setq doom-font (font-spec :family "Source Code Pro" :size 12)
;;       doom-unicode-font (font-spec :family "Menlo" :size 12)
;;       )

(setq doom-font (font-spec :family "Source Code Pro" :size 12 :weight 'normal :width 'normal)
      doom-variable-pitch-font (font-spec :family "Source Code Pro" :size 12 :weight 'normal :width 'normal)
      doom-big-font (font-spec :family "Source Code Pro" :size 20))

;; Set font for chinese characters
;; Font should be twice the width of asci chars so that org tables align
;; This will break if run in terminal mode, so use conditional to only run for GUI.
(if (display-graphic-p)
    (dolist (charset '(kana han cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset (font-spec :family "Hiragino Sans GB" :size 18))))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
;; (setq doom-font (font-spec :family "Menlo" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "Menlo") ; inherits `doom-font''s :size
;;       doom-unicode-font (font-spec :family "Menlo" :size 12))

;;(setq mac-command-modifier 'meta)

;; dap-mode

;;(setq doom-leader-key "M-m")
(setq doom-leader-alt-key "M-m")
(setq auto-window-vscroll nil)
(setq doom-modeline-enable-word-count nil)
(setq lsp-gopls-staticcheck t)
(setq lsp-eldoc-render-all t)
(setq lsp-gopls-complete-unimported t)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(setq lsp-ui-doc-enable t
      lsp-ui-peek-enable t
      lsp-ui-sideline-enable t
      lsp-ui-imenu-enable t
      lsp-ui-flycheck-enable t)

(setq lsp-ui-doc-winum-ignore t
      lsp-ui-doc--buffer-prefix " *lsp-ui-doc-")
(setq org-startup-folded t)
(setq lsp-ui-mode t)


(add-hook 'protobuf-mode-hook
          (lambda () (c-add-style "my-style" my-protobuf-style t)))
