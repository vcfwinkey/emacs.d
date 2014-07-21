(fset 'delete-one-line
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("" 0 "%d")) arg)))
(global-set-key "\C-x\C-kK" 'delete-one-line)

(provide 'init-macros)
