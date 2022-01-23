;;; +ess.el -*- lexical-binding: t; -*-

;; pas mal de pris de la vidéo de Frédéric Santos
;;  https://github.com/ess-intro/presentation-ess-customization/blob/main/tutorial/ess-customization.pdf
;;  et de dépot: https://github.com/ess-intro/presentation-ess-customization/blob/main/tutorial/ess-customization.pdf
;;
;;
(setq ess-R-font-lock-keywords
      '((ess-R-fl-keyword:keywords . t)
	(ess-R-fl-keyword:constants . t)
	(ess-R-fl-keyword:modifiers . t)
	(ess-R-fl-keyword:fun-defs . t)
	(ess-R-fl-keyword:assign-ops . t)
	(ess-R-fl-keyword:%op% . t)
	(ess-fl-keyword:fun-calls . t)
	(ess-fl-keyword:numbers . t)
	(ess-fl-keyword:operators)
	(ess-fl-keyword:delimiters)
	(ess-fl-keyword:=)
	(ess-R-fl-keyword:F&T . t)))
;; Open Rdired buffer with F9:
(add-hook 'ess-r-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "<f9>") #'ess-rdired)))
;; Close Rdired buffer with F9 as well:
(add-hook 'ess-rdired-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "<f9>") #'kill-buffer-and-window)))

(add-hook 'ess-r-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "<f12>") #'company-R-args)))
