;;;
;;; Package manager.
;;;

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;;;
;;; Dark Theme.
;;;

(require 'dracula-theme)


;;;
;;; Evil Mode.
;;;

(require 'evil)
(evil-mode t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
;;; If I uncomment this line, tab will be inserted each time that I change line.
;;; I don't like it when I edit normal text for an email by example.
;;;(setq indent-line-function 'insert-tab)


;;;
;;; Key Bindings.
;;;

(global-set-key (kbd "<f12>") 'helm-buffers-list)

(define-key evil-window-map (kbd "<down>") 'evil-window-down)
(define-key evil-window-map (kbd "<up>") 'evil-window-up)
(define-key evil-window-map (kbd "<right>") 'evil-window-right)
(define-key evil-window-map (kbd "<left>") 'evil-window-left) 

(global-set-key (kbd "C-a") 'mark-whole-buffer)
