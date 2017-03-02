;; start setting
(setq
    inhibit-splash-screen t
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
(global-linum-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(show-paren-mode)
;; set theme
(load-theme 'wombat t)

;; set default tab char's display width to 4 spaces
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode t)

;; Whitespace Cleanup: every buffer would be cleaned up before it’s saved
(add-hook 'before-save-hook 'whitespace-cleanup)

;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil)

;; make tab key do indent first then completion.
(setq-default tab-always-indent 'complete)

(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e))

(global-set-key (kbd "C-x k") 'windmove-up)
(global-set-key (kbd "C-x j") 'windmove-down)
(global-set-key (kbd "C-x h") 'windmove-left)
(global-set-key (kbd "C-x l") 'windmove-right)

;; Install using the latest version of Emacs and its builtin package system.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
;; package list
;; M-x el-get-install RET evil RET
;; M-x el-get-install RET ag  RET

;; (require 'evil)
;; (evil-mode 1)
