;;; +org.el -*- lexical-binding: t; -*-

;; Improve org mode looks
;; not sure if they are usefull I took them here
;; https://lucidmanager.org/productivity/ricing-org-mode/
;; I think some are by default in pretty mode, I will keep them and remove later
(setq org-startup-indented t
      org-pretty-entities t
      org-hide-emphasis-markers t
      org-startup-with-inline-images t
       org-image-actual-width '(300))

;; then I use some from alegrand https://github.com/alegrand
;;
(setq rrmooc/new-org-templates (version<= "9.2" (org-version)))
(when  rrmooc/new-org-templates
  (require 'org-tempo))

(require 'subr-x)
(defun rrmooc/add-org-template (old-style-template)
  (add-to-list 'org-structure-template-alist
	       (if rrmooc/new-org-templates
		   (cons
		    (first old-style-template)
		    (string-trim-right (substring (second old-style-template) 8 -9)))
		 old-style-template)))

(unless rrmooc/new-org-templates
  ;; this template is predefined in the new templating system
  (rrmooc/add-org-template
   '("s" "#+begin_src ?\n\n#+end_src" "<src lang=\"?\">\n\n</src>")))

(rrmooc/add-org-template
 '("m" "#+begin_src emacs-lisp\n\n#+end_src" "<src lang=\"emacs-lisp\">\n\n</src>"))

(rrmooc/add-org-template
 '("r" "#+begin_src R :results output :session *R* :exports both\n\n#+end_src" "<src lang=\"R\">\n\n</src>"))

(rrmooc/add-org-template
 '("R" "#+begin_src R :results output graphics file :file (org-babel-temp-file \"figure\" \".png\") :exports both :width 600 :height 400 :session *R* \n\n#+end_src" "<src lang=\"R\">\n\n</src>"))

(rrmooc/add-org-template
 '("RR" "#+begin_src R :results output graphics file :file  (org-babel-temp-file (concat (file-name-directory (or load-file-name buffer-file-name)) \"figure-\") \".png\") :exports both :width 600 :height 400 :session *R* \n\n#+end_src" "<src lang=\"R\">\n\n</src>"))
