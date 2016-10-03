;; start setting
(setq inhibit-splash-screen t
      initial-scratch-message nil
      initial-major-mode 'text-mode
      mouse-sel-mode t
      tab-width 4
      c-basic-indent 4
      gdb-many-windows t
      gdb-show-main t
      make-backup-files nil)

(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode t)
(line-number-mode 1)
(column-number-mode 1)

;; set theme
(load-theme 'manoj-dark t)

;; set default tab char's display width to 4 spaces
(setq-default tab-width 4)

;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil)

;; make tab key do indent first then completion.
(setq-default tab-always-indent 'complete)

(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e))

(require 'package)
