(push "/usr/local/bin" exec-path)

(if (window-system)
  (set-frame-size (selected-frame) 124 40))

(setq hl-paren-colors
      '(;"#8f8f8f" ; this comes from Zenburn
                   ; and I guess I'll try to make the far-outer parens look like this
        "orange1" "yellow1" "greenyellow" "green1"
        "springgreen1" "cyan1" "slateblue1" "magenta1" "purple"))


(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)

(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(set-fringe-style -1)
(tooltip-mode -1)

(set-frame-font "Menlo-13")
(load-theme 'tango-dark)

(require 'package)
(setq package-archives (cons '("tromey" . "http://tromey.com/elpa/") package-archives))
(package-initialize)

(add-hook 'clojure-mode-hook (lambda () (highlight-parentheses-mode t) (paredit-mode t)))



;  '(progn (slime-setup '(slime-repl))))

;(add-to-list 'load-path "~/.emacs.d/swank-clojure")
;(require 'swank-clojure)

;; slime
;(eval-after-load "slime" 
;  '(progn (slime-setup '(slime-repl))))

;; (setq swank-clojure-jar-path "~/.clojure/clojure.jar"
;;       swank-clojure-extra-classpaths 
;;       (list "~/.clojure/clojure-contrib.jar"
;;             "~/.emacs.d/swank-clojure/src/swank"))

;; (require 'slime)
;; (slime-setup) 
