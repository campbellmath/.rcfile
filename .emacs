(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e))
(setq mouse-sel-mode t)
(global-linum-mode t)
(setq gdb-many-windows t)
(setq gdb-show-main t)
(setq initial-scratch-message "")
(setq initial-major-mode 'text-mode)
(menu-bar-mode -1)
;; (add-hook 'text-mode-hook 'turn-on-auto-fill)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(ansi-color-faces-vector
     [default default default italic underline success warning error])
  '(column-number-mode t)
  '(display-time-mode t)
  '(fringe-mode 0 nil (fringe))
  '(inhibit-startup-screen t)
  '(scroll-bar-mode nil)
  '(size-indication-mode t)
  '(tool-bar-mode nil)
  '(tooltip-mode nil))
(load-theme 'manoj-dark t)

;; set default tab char's display width to 4 spaces
(setq-default tab-width 4)

;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil)

;; make tab key do indent first then completion.
(setq-default tab-always-indent 'complete)

;; set current buffer's tab char's display width to 4 spaces
(setq tab-width 4)

(setq c-basic-indent 4)
