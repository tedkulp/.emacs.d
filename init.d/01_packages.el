;; My package.el repos
(require 'package)
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp
                                  starter-kit-bindings
                                  starter-kit-ruby
                                  starter-kit-js
                                  ace-jump-mode
                                  color-theme-sanityinc-solarized
                                  expand-region
                                  org
                                  yaml-mode
                                  yasnippet
                                  feature-mode
                                  markdown-mode
                                  markdown-mode+
                                  whole-line-or-region)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-refresh-contents)
    (package-install p)))
