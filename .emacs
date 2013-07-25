;;;; Liu Yuan's .emacs file
;; 28 June 2012

;; Each section in this file is introduced by a
;; line beginning with four semicolons; and each
;; entry is introduced by a line beginning with
;; three semicolons.

;;;; Global customize
; Custom load path
(add-to-list 'load-path "~/.emacs.d/add-ones/")
;;; face customize
;; turn off the Emacs menu bar
(menu-bar-mode -1)
;; turn off the Emacs tool bar
(tool-bar-mode -1)
;; Make Home move to the beinging of the buffer.
(global-set-key [home] 'beginning-of-buffer)
;; Make End move to the ending of the buffer.
(global-set-key [end] 'end-of-buffer)
;; Set the background color.
(set-background-color "black")
;; Set the foreground color
(set-foreground-color "gainsboro")
;; Disalbe the welcome screen
(setq inhibit-startup-message t)
;; Always show line number
(global-linum-mode 1)

;;; Disable for update to Emacs 24
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;; CEDET Configuration							     ;;
;; ;; Load CEDET.								     ;;
;; ;; See cedet/common/cedet.info for configuration details.			     ;;
;; (load-file "~/.myEmacsLib/cedet/common/cedet.el")				     ;;
;; ;; Enable EDE (Project Management) features					     ;;
;; (global-ede-mode 1)								     ;;
;; ;; Enable EDE for a pre-existing C++ project					     ;;
;; ;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")		     ;;
;; ;; Enabling Semantic (code-parsing, smart completion) features		     ;;
;; ;; Select one of the following:						     ;;
;; ;; * This enables the database and idle reparse engines			     ;;
;; (semantic-load-enable-minimum-features)					     ;;
;; ;; * This enables some tools useful for coding, such as summary mode		     ;;
;; ;;   imenu support, and the semantic navigator				     ;;
;; (semantic-load-enable-code-helpers)						     ;;
;; ;; * This enables even more coding tools such as intellisense mode		     ;;
;; ;;   decoration mode, and stickyfunc mode (plus regular code helpers)	     ;;
;; ;; (semantic-load-enable-gaudy-code-helpers)					     ;;
;; ;; * This enables the use of Exuberent ctags if you have it installed.	     ;;
;; ;;   If you use C++ templates or boost, you should NOT enable it.		     ;;
;; ;; (semantic-load-enable-all-exuberent-ctags-support)			     ;;
;; ;;   Or, use one of these two types of support.				     ;;
;; ;;   Add support for new languges only via ctags.				     ;;
;; ;; (semantic-load-enable-primary-exuberent-ctags-support)			     ;;
;; ;;   Add support for using ctags as a backup parser.				     ;;
;; ;; (semantic-load-enable-secondary-exuberent-ctags-support)			     ;;
;; ;; Enable SRecode (Template management) minor-mode.				     ;;
;; ;; (global-srecode-minor-mode 1)						     ;;
;; ;;; Matlab mode configuration						     ;;
;; ;;										     ;;
;; ;;(add-to-list 'load-path "~/.myEmacsLib/matlab-emacs/")			     ;;
;; ;;(load-library "matlab-load")						     ;;
;; ;;(require 'matlab-load)							     ;;
;; ;; Enable CEDET freature support for MATLAB code.				     ;;
;; ;;(matlab-cedet-setup)							     ;;
;; 										     ;;
;; ;; matlab-emacs  								     ;;
;; (add-to-list 'load-path "~/.myEmacsLib/matlab-emacs/")  			     ;;
;; (load-library "matlab-load")  						     ;;
;; ;; Enable CEDET freature support for MATLAB code.				     ;;
;; (matlab-cedet-setup)								     ;;
;; (autoload 'matlab-mode "matlab" "Enter MATLAB mode." t)  			     ;;
;; (setq auto-mode-alist (cons '("//.m//'" . matlab-mode) auto-mode-alist))  	     ;;
;; (autoload 'matlab-shell "matlab" "Interactive MATLAB mode." t)  		     ;;
;; (setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save  	     ;;
;; (defun my-matlab-mode-hook ()  						     ;;
;;   (setq fill-column 76)) ; where auto-fill should wrap  			     ;;
;; (add-hook 'matlab-mode-hook 'my-matlab-mode-hook)  				     ;;
;; (defun my-matlab-shell-mode-hook ()  					     ;;
;;   '())  									     ;;
;; (add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)  		     ;;
;; (global-font-lock-mode t)  							     ;;
;; 					;(matlab-mode-hilit)  			     ;;
;; ;;(autoload 'tlc-mode "tlc" "tlc Editing Mode" t)  				     ;;
;; ;;(add-to-list 'auto-mode-alist '("//.tlc{1}quot;" . tlc-mode))  		     ;;
;; ;;(setq tlc-indent-function t)  						     ;;
;; 										     ;;
;; (custom-set-variables							     ;;
;;   ;; custom-set-variables was added by Custom.				     ;;
;;   ;; If you edit it by hand, you could mess it up, so be careful.		     ;;
;;   ;; Your init file should contain only one such instance.			     ;;
;;   ;; If there is more than one, they won't work right.			     ;;
;;  '(matlab-mode-install-path (quote ("/usr/local/MATLAB/R2012a/toolbox/")))	     ;;
;;  '(matlab-shell-ask-MATLAB-for-completions nil)				     ;;
;;  '(matlab-shell-command "/usr/local/MATLAB/R2012a/bin/matlab")		     ;;
;;  '(matlab-shell-enable-gud-flag t))						     ;;
;;   										     ;;
;; (custom-set-faces								     ;;
;;   ;; custom-set-faces was added by Custom.					     ;;
;;   ;; If you edit it by hand, you could mess it up, so be careful.		     ;;
;;   ;; Your init file should contain only one such instance.			     ;;
;;   ;; If there is more than one, they won't work right.			     ;;
;;  )										     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  

;; client  
;;(server-start)

;; auto fill mode enabled
  
;; load column-maker
(require 'column-marker)

;;; Python development enviroment customize
;; lambda-mode conf
(require 'lambda-mode)
;; anything conf
(require 'anything)
;(require 'anything-ipython)
(require 'anything-show-completion)
;(when (require 'anything-show-completion nil t)
;  (use-anything-show-completion 'anything-ipython-complete '(length initial-pattern)))
;; python-pep8
(require 'python-pep8)
;; python-pylint
(require 'python-pylint)
;; yasnippet
(require 'yasnippet-bundle)
(yas/initialize)
(yas/load-directory "~/.emacs.d/add-ones/snippets/")
;; hook
(defun my-python-windows ()
  (progn (split-window-vertically)
	 ;(other-window 1)
	 ;(run-python)
	 (other-window 1)))
(add-hook 'python-mode-hook #'lambda-mode 1)
(add-hook 'python-mode-hook (lambda () (interactive) (linum-mode))) 
(add-hook 'python-mode-hook 'turn-on-eldoc-mode)
;(add-hook 'python-mode-hook (lambda () (interactive) (run-python)))
;(add-hook 'python-mode-hook 'my-python-windows)
;;; C development enviroment
;; hook
(add-hook 'c-mode-common-hook (lambda () (interactive) (linum-mode)))
(add-hook 'c-mode-common-hook 'turn-on-eldoc-mode)

;;; LaTeX
;; Using XeLaTeX as default compile command
(defun my-latex-mode-hook ()
  (add-to-list 'TeX-command-list
	       '("XeLaTeX" "% `xelatex%(mode)%' %t" TeX-run-TeX nil t))
  (setq TeX-command-default
	(save-excursion
	  (save-restriction
	    (widen)
	    (goto-char (point-min))
	    (let ((re (concat "^\\s-*\\\\usepackage\\(?:\\[.*\\]\\)?"
			      "{.*\\<\\(?:font\\|math\\)spec\\>.*}")))
	      (if (re-search-forward re 3000 t)
		  "XeLaTeX"
		"LaTeX"))))))

