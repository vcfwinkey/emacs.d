(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(custom-set-variables
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))

;;(setq default-major-mode 'text-mode)
;;(add-hook 'text-mode-hook (lambda ( ) (refill-mode 1)))

;; Default display line number
(global-linum-mode 1)
(setq linum-format "%d")

;; Set invisible password inputing
(add-hook 'comint-output-filter-functions 
    'comint-watch-for-password-prompt)

;; Add package archives for version 24
(when (>= emacs-major-version 24)
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
)

;; Save all tempfiles in $TMPDIR/emacs$UID/
(if (eq system-type 'window-nt)
    (defconst emacs-tmp-dir (format "f:\\%s\\" "temp"))
  (defconst emacs-tmp-dir (format "~/%s/" "temp")))
(setq backup-directory-alist
    `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
    `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
    emacs-tmp-dir)

;; Add undo tree
(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree-20140110.616")
(require 'undo-tree)
(global-undo-tree-mode)

;; Use aspell as default ispell
(setq-default ispell-program-name "aspell")

(require 'init-macros)
