(set-language-environment 'UTF-8)

;;--------------------------------------------------
;; Workspace
;;--------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/custom/")
(let ((default-directory "~/.emacs.d/custom/"))
  (normal-top-level-add-subdirs-to-load-path))

;;--------------------------------------------------
;; Packages
;;--------------------------------------------------

;; include Marmelade repo, use M-X list packages
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Tab configures
(setq c-basic-offset 4)
(setq tab-width 4)

;;--------------------------------------------------
;; Other Configures
;;--------------------------------------------------
;; default work directory
;; (setq default-directory "")

;; highlight matching pairs of parentheses
(show-paren-mode 1)
(setq show-paren-delay 0)

;; show column numbers
(column-number-mode t)
(global-linum-mode 1)

;; show current file
(setq frame-title-format "%b -- emacs")

;; no tool bar
;; (tool-bar-mode nil)

;;--------------------------------------------------
;; GUI
;;--------------------------------------------------
;; elscreen config
;(elscreen-set-prefix-key "\C-t")
(elscreen-start)

;;--------------------------------------------------
;; Fonts
;;--------------------------------------------------
;; default fonts
(set-default-font "Monospace-12")
(if window-system 
   (set-fontset-font (frame-parameter nil 'font)
	  'unicode '("simsun" . "unicode-bmp")))

;;--------------------------------------------------
;; Window Location
;;--------------------------------------------------
;; Startup location
(setq default-frame-alist
      '((height . 35)(width . 100)(menubar-lines . 20)(tool-bar-lines . 1)))

;;--------------------------------------------------
;; Color
;;--------------------------------------------------
;; Background Color
;; (set-background-color xxx)

;;--------------------------------------------------
;; Time
;;--------------------------------------------------
;; Show time
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;;--------------------------------------------------
;; Mouse
;;--------------------------------------------------
;; mouse avoids cursor
(mouse-avoidance-mode 'animate)

;;--------------------------------------------------
;; Key Bindings
;;--------------------------------------------------
;; "REDO"
;; (require 'redo)
;; (global-set-key (kbd "C-.") 'redo)

;;--------------------------------------------------
;; buffer Configures
;;--------------------------------------------------
;; ibuffer
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
;; CRM bufer list
;; (global-set-key "\C-x\C-b" 'electric-buffer-list)

;; ido
(require 'ido)
(ido-mode)
(setq ido-enable-flex-matching t)

;;--------------------------------------------------
;; Bookmarks
;;--------------------------------------------------
;; bookmark file
(setq bookmark-default-file "~/.emacs.d/.emacs.bmk")
;; update and save bookmark
(setq bookmark-save-flag 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;-------------------------------------------------
;; modes
;;-------------------------------------------------
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

(autoload 'html-mode "html-mode" "Major mode for editing html code." t)
(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))

(require 'ned-mode)
(autoload 'ned-mode "ned-mode" "Major Mode for editing Ned files" t)
(add-to-list 'auto-mode-alist '("\\.ned$" . ned-mode))

