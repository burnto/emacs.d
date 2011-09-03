(push "/usr/local/bin" exec-path)

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
(load-theme 'tango)

(require 'package)
(setq package-archives (cons '("tromey" . "http://tromey.com/elpa/") package-archives))
(package-initialize)

;; (add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;; (require 'el-get)

;; ;; Packages

;; (setq el-get-sources
;;       '((:name ruby-mode 
;;                :type elpa
;;                :load "ruby-mode.el")
;;         (:name inf-ruby  :type elpa)
;;         (:name ruby-compilation :type elpa)
;;         (:name css-mode :type elpa)
;;         (:name textmate
;;                :type git
;;                :url "git://github.com/defunkt/textmate.el"
;;                :load "textmate.el")
;;         (:name rvm
;;                :type git
;;                :url "http://github.com/djwhitt/rvm.el.git"
;;                :load "rvm.el"
;;                :compile ("rvm.el")
;;                :after (lambda() (rvm-use-default)))
;;         (:name rhtml
;;                :type git
;;                :url "https://github.com/eschulte/rhtml.git"
;;                :features rhtml-mode)
;;         (:name yaml-mode 
;;                :type git
;;                :url "http://github.com/yoshiki/yaml-mode.git"
;;                :features yaml-mode)))
;; (el-get 'sync)


(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)


(setq my-packages
      (append
       '(clojure-mode swank-clojure textmate)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)
