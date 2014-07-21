(fset 'copy-whole-line-to-next-line
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 100663328 5 134217847 return 25] 0 "%d")) arg)))
(global-set-key "\M-N" 'copy-whole-line-to-next-line)

(fset 'copy-whole-line-to-prev-line
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([5 0 1 134217847 return 16 25] 0 "%d")) arg)))
(global-set-key "\M-P" 'copy-whole-line-to-prev-line)

(provide 'init-macros)
