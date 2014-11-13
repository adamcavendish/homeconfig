;;--------------------------------------------------
;; Packages
;;--------------------------------------------------
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;--------------------------------------------------
;; Evil vim mode
;;--------------------------------------------------
;(require 'evil)
;(evil-mode 1)

;;--------------------------------------------------
;; Workspace
;;--------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/custom/")
(let ((default-directory "~/.emacs.d/custom/"))
  (normal-top-level-add-subdirs-to-load-path))

;;--------------------------------------------------
;; Other Configures
;;--------------------------------------------------
;; default work directory
;; (setq default-directory "")

(set-language-environment 'UTF-8)
(setq user-emacs-directory "/files/Nutstore/LinuxSync/important_configs/.emacs.d/")
(setq vc-follow-symlinks t)

;; backup file config
(setq
   backup-by-copying t       ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs.d/backup-files/"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

;; show column numbers
(column-number-mode t)
(global-linum-mode 1)

;; show current file
(setq frame-title-format "%b -- emacs")

;; no tool bar
;; (tool-bar-mode nil)

;;--------------------------------------------------
;; Tab, brackets, etc.
;;--------------------------------------------------
;; Tab configures
(require 'smart-tab)
;;(global-smart-tab-mode 1)
(setq-default c-basic-offset 4 c-default-style "k&r")
(setq-default tab-width 4)
;(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
(setq-default indent-tabs-mode nil)

;; brackets configures
(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

;; highlight matching pairs of parentheses
(show-paren-mode 1)
(setq show-paren-delay 0)

;;--------------------------------------------------
;; GUI
;;--------------------------------------------------
;; elscreen config
;(setq elscreen-set-prefix-key "\C-j")
(elscreen-start)

;;--------------------------------------------------
;; Fonts
;;--------------------------------------------------
;; default fonts
(set-default-font "Monospace-16")
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

;;--------------------------------------------------
;; Multiple-cursors
;;--------------------------------------------------
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;-------------------------------------------------
;; modes
;;-------------------------------------------------
;; for php
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

;; for html
;;(autoload 'html-mode "html-mode" "Major mode for editing html code." t)
;;(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))

;; OMNet++
(require 'ned-mode)
(autoload 'ned-mode "ned-mode" "Major Mode for editing Ned files" t)
(add-to-list 'auto-mode-alist '("\\.ned$" . ned-mode))

;; C++
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Web development
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))

;; Common Lisp
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; Haskell
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

;;--------------------------------------------------
;; MODE Set Options
;;--------------------------------------------------

;; web-mode configs

;; Indentation
;  html offset indentation
(setq web-mode-markup-indent-offset 2)
;  css offset indentation
(setq web-mode-css-indent-offset 2)
;  script offset indentation
(setq web-mode-code-indent-offset 4)
;; Left-padding
;  <style>
(setq web-mode-style-padding 1)
;  <script>
(setq web-mode-script-padding 1)
;  multi-line
(setq web-mode-block-padding 0)
;; Comments
(setq web-mode-comment-style 2)
;; Syntax Highlighting
;  Change face color
;(set-face-attribute 'web-mode-css-rule-face nil :foreground "Pink3")
;; Shortcut
;(define-key web-mode-map (kbd "C-n") 'web-mode-tag-match)
;; Snippets
(setq web-mode-extra-snippets 
      '(("erb" . (("name" . ("beg" . "end"))))
        ("php" . (("name" . ("beg" . "end"))
                  ("name" . ("beg" . "end"))))
       ))

;; Auto-pairs
(setq web-mode-extra-auto-pairs 
      '(("erb"  . (("open" "close")))
        ("php"  . (("open" "close")
                   ("open" "close")))
       ))
;; Enable/Disable options
;  auto-pairing
(setq web-mode-enable-auto-pairing t)
;  CSS colorization
(setq web-mode-enable-css-colorization t)
;  Block face: can be used to set blocks background
(setq web-mode-enable-block-face t)
;  Part face: can be used to set parts background
(setq web-mode-enable-part-face t)
;  Comment keywords
(setq web-mode-enable-comment-keywords t)
;  Highlight current HTML element
(setq web-mode-enable-current-element-highlight t)
;  Heredoc (cf. PHP strings) fontification (when the identifier is <<<EOTHTML or <<<EOTJAVASCRIPT)
(setq web-mode-enable-heredoc-fontification t)
;; Keywords
;  Add PHP constants and keywords
;(setq web-mode-extra-php-constants '("constant1" "constant2"))
;(setq web-mode-extra-php-keywords t)
;  Add JS Keywords
(setq web-mode-extra-javascript-keywords t)
;  Add JSP keywords
;(setq web-mode-extra-jsp-keywords t)
;  Add ASP keywords
;(setq web-mode-extra-asp-keywords t)

