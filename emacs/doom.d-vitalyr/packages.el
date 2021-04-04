;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; DO NOT EDIT THIS FILE DIRECTLY
;; This is a file generated from a literate programing source file located at
;; https://gitlab.com/zzamboni/dot-doom/-/blob/master/doom.org
;; You should make any changes there and regenerate it from Emacs org-mode
;; using org-babel-tangle (C-c C-v t)

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.

;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;;(package! another-package
;;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;;(package! this-package
;;  :recipe (:host github :repo "username/repo"
;;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;;(package! builtin-package :recipe (:nonrecursive t))
;;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;;(package! builtin-package :pin "1a2b3c4d5e")

;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;;(unpin! pinned-package)
;; ...or multiple packages
;;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;;(unpin! t)
(package! kana :recipe (:host github :repo "chenyanming/kana"))
(package! org-roam-server :recipe (:host github :repo "org-roam/org-roam-server"))
(package! rime :recipe (:host github :repo "DogLooksGood/emacs-rime"))
(package! valign :recipe (:host github :repo "casouri/valign"))
(package! org-latex-impatient :recipe (:host github :repo "yangsheng6810/org-latex-impatient"))
(package! org-bullets)
;; (package! sis :recipe (:host github :repo "laishulu/emacs-smart-input-source"))
;; sis is in melpa now
(package! sis)
(package! diminish)
;;(package! quelpa-use-package)
(package! shackle)
(package! exec-path-from-shell :recipe (:host github :repo "purcell/exec-path-from-shell"))
(package! wucuo :recipe (:host github :repo "redguardtoo/wucuo"))
(package! quickrun :recipe (:host github :repo "emacsorphanage/quickrun"))
(package! transwin :recipe (:host github :repo "jcs-elpa/transwin"))
(package! company-tabnine :recipe (:host github :repo "TommyX12/company-tabnine"))
(package! org-roam-bibtex :recipe (:host github :repo "org-roam/org-roam-bibtex"))
(package! org-xournal :recipe (:host github
                               :repo "yuchen-lea/org-xournal"
                               :files ("*.el")))
(package! org-krita
  :recipe (:host github
           :repo "lepisma/org-krita"
           :files ("resources" "resources" "*.el" "*.el")))
(package! ligature
  :recipe (:host github
           :repo "mickeynp/ligature.el"
           :files ("*.el")
           ))
;; no nox any more
;;(package! nox :recipe(:host github :repo "manateelazycat/nox"))
(unpin! org-roam)
(unpin! org-roam-server)
(unpin! rime)

;;(package! spacemacs-theme)

(package! switch-buffer-functions)

(package! pcre2el)
(package! visual-regexp-steroids)

(package! org-appear
  :recipe (:host github
           :repo "awth13/org-appear"))

(package! org-download)

;;(package! mexican-holidays)
;;(package! swiss-holidays)

(package! org-super-agenda)

(package! org-gtd)

;;(package! org-cv
;;  :recipe (:local-repo "~/Dropbox/Personal/devel/emacs/org-cv"))

;;(package! ox-leanpub
;;  :recipe (:local-repo "~/Dropbox/Personal/devel/emacs/ox-leanpub"))

(package! org-pandoc-import
  :recipe (:host github
           :repo "tecosaur/org-pandoc-import"
           :files ("*.el" "filters" "preprocessors")))

(package! ox-jira)

;;(package! org-jira)

(package! org-ml)

(package! org-ql)

(package! org-auto-tangle)

;;(package! elvish-mode)
;;(package! ob-elvish)

;;(package! ob-cfengine3)

(package! graphviz-dot-mode)

(package! package-lint)

(package! org-fragtog)

;;(package! emacs-everywhere :pin nil)

(package! iedit)

(package! unfill)

(package! annotate)

(package! gift-mode)
