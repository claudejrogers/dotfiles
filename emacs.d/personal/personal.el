;; Here are some examples of how to override the defaults for the
;; various prelude-emacs settings.  To *append* to any of the
;; configurations attached to prelude-*-hooks, you can attach a
;; function to the appropriate hook:

;; disable whitespace-mode and whitespace-cleanup
;; (add-hook 'prelude-prog-mode-hook
;;           (lambda ()
;;             (prelude-turn-off-whitespace)
;;             (remove-hook 'before-save-hook 'whitespace-cleanup)) t)

;; For other global settings, just run the appropriate function; all
;; personal/*.el files will be evaluate after prelude-emacs is loaded.

;; disable line highlight
;; (global-hl-line-mode -1)

;; make the cursor blinking
(blink-cursor-mode t)

;; Wrap lines at word breaks
(global-visual-line-mode 1)

;; Fill column
(setq-default fill-column 80)

;; Custom faces
(custom-set-faces
 '(default ((t (:height 120 :family "Menlo"))))
 '(org-level-1 ((t (:foreground "#268BD2" :weight bold)))))

(Disable-theme 'zenburn)
(load-theme 'solarized-dark t)

(custom-set-variables
 '(reftex-default-bibliography
   (quote ("/Users/cjrogers/Library/texmf/bibtex/bib/ThesisRefs.bib"
           "/Users/cjrogers/Library/texmf/bibtex/bib/prop.bib"))))
;; Add back arrow keys support
(prelude-restore-arrow-keys)

;; Add to path
(setq exec-path (append exec-path '("/usr/local/bin" "/usr/texbin")))

;; path
(add-to-list 'load-path
             (yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets"))

;; Window size
(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 200))

;; Org Mode
(setq org-hide-leading-stars t)
;; Tags
(setq org-tag-alist '(("work" . ?w)
                      ("home" . ?h)
                      ("lab" . ?l)
                      ("jobs" . ?j)
                      ("meetings" . ?m)))
;; TODO types
(setq org-todo-keywords '((sequence "TODO" "STARTED" "|" "DONE" "CANCELED")))
(setq org-todo-keyword-faces
      '(("STARTED" . org-special-keyword)
        ("DONE" . org-done)
        ("TODO" . org-todo)
        ("CANCELED" . org-cancelled-kwd-face)))
;; Org mode babel language support
(org-babel-do-load-languages
 'org-babel-load-languages
 '( (perl . t)
    (python . t)
    (sh . t)
    (ruby . t)
    (R . t)
    (emacs-lisp . t)
    (C . t)
    )
 )
;; turn off whitespace
;; (add-hook 'prog-mode-hook
;; (lambda ()
;; (prelude-turn-off-whitespace t)
;; (turn-off-show-whitespace-mode t)))
(add-hook 'prog-mode-hook 'prelude-turn-off-whitespace t)
;; (add-hook 'prog-mode-hook 'turn-off-show-whitespace-mode)
;;
(defun org-export-body-as-html ()
  (interactive)
  (org-export-as-html 3 nil nil "blog" t))
(add-hook 'org-mode-hook
          (lambda ()
            (setq org-export-htmlize-output-type 'css)
            (local-set-key (quote [?\C-c ?\C-x]) 'org-export-body-as-html)))
;; RefTex and Org
(defun org-mode-reftex-setup ()
  (load-library "reftex")
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (reftex-parse-all))
  (define-key org-mode-map (kbd "C-c )") 'reftex-citation))
;; (define-key org-mode-map (kbd "C-c (") 'org-mode-reftex-search))
(add-hook 'org-mode-hook 'org-mode-reftex-setup)
;;
;; Python: Line numbers
;;
;; bind RET to py-newline-and-indent
(add-hook 'python-mode-hook '(lambda ()
                               (define-key python-mode-map "\C-m" 'newline-and-indent)))
(setq-default indent-tabs-mode nil)
(add-hook 'python-mode-hook (lambda () (linum-mode 1)))
;; Use ibuffer as default buffer list
(defalias 'list-buffers 'ibuffer)
;;
;; LaTeX
;;
;; line numbers
(add-hook 'LaTeX-mode-hook (lambda () (linum-mode 1)))
(add-hook 'bibtex-mode-hook (lambda () (linum-mode 1)))
;; turn on RefTeX
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

;;
;; CC Mode
;;
(add-hook 'c-mode-hook (lambda () (linum-mode 1)))

;;
;; Julia
;;
;;(add-to-list 'load-path "~/bin/julia/contrib/")
;;(require 'julia-mode)
;;(setq auto-mode-alist
;;      (append '(("\\.jl$" . julia-mode)) auto-mode-alist))
