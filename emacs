(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (deeper-blue)))
 '(haskell-mode-hook (quote (turn-on-haskell-indent)))
 '(inhibit-startup-screen t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;changement de buffer ac ctrl+tab
(global-set-key [(control tab)] 'other-window)

;; Montrer la correspondance des parenthèses
;; (systématiquement et non seulement après la frappe)
(when (require 'paren)
  (show-paren-mode t)
  (setq blink-matching-paren t)
  (setq blink-matching-paren-on-screen t)
  (setq show-paren-style 'parenthesis)
  ;;(setq show-paren-style 'expression)
  (setq blink-matching-paren-dont-ignore-comments t))


; revenir à la ligne automatiquement
(setq-default auto-fill-mode t)
(setq text-mode-hook 'turn-on-auto-fill)

;;; indentation auto
(global-set-key (kbd "RET") 'newline-and-indent)
(define-key text-mode-map (kbd "RET") 'newline)

; pour changer l'apparence du curseur
(setq-default cursor-type 'bar)

; Pour changer le style d'indentation par défaut en mode CC (C, C++, Java...)
(setq c-default-style "cc-mode")


; Pour le mode rust
(add-to-list 'load-path "/home/remi/Documents/modes-emacs/rust-mode")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))


; Pour le LaTeX
(load "auctex.el" nil t t)

; Pour changer l'interpréteur Python par défaut (lancé avec C-c C-P)
(setq python-shell-interpreter "ipython3"
 	  python-shell-interpreter-args "-i")


; pour le mode Markdown
(autoload 'markdown-mode "markdown-mode"
    "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))




; Mise en place de MELPA et installation du mode Scala
(require 'package)
(add-to-list 'package-archives
 			 '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(unless (package-installed-p 'scala-mode2)
   (package-refresh-contents) (package-install 'scala-mode2))

; ---------------------------------------------------------------------------- ;
;  Pour installer le org-mode et le configurer                                 ;
; ---------------------------------------------------------------------------- ;
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)
;; The following lines are always needed.  Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)


; Mise en place de autopair
(require 'autopair)
(autopair-global-mode 1)
(set autopair-autowrap t)

; always show column number
(column-number-mode)
