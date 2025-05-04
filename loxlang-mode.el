;; mylang-mode.el
;; Put this file somewhere and put the following line in your
;; emacs init.el file:
;; (load "~/.emacs.d/loxlang-mode.el")
;; I'm not even going to pretend I know what's going on here...
(defvar loxlang-keywords
  '("if" "else" "return" "fun" "var" );; replace with your language's keywords
  "MyLang keywords.")


(defvar loxlang-font-lock-keywords
  `(
    (,(regexp-opt loxlang-keywords 'words) . font-lock-keyword-face)
    ("\\/\\*\\(.\\|\n\\)*?\\*\\/" . font-lock-comment-face)
    ("\\<fun\\s-+\\([a-zA-Z_][a-zA-Z0-9_]*\\)" 1 font-lock-function-name-face)
    )
  "Highlighting expressions for MyLang mode.")

(define-derived-mode loxlang-mode prog-mode "loxlang"
  "Major mode for editing MyLang source code."
  (setq font-lock-defaults '((loxlang-font-lock-keywords)))
  (setq font-lock-multiline t))

;; Associate .myl files with mylang-mode
(add-to-list 'auto-mode-alist '("\\.lox\\'" . loxlang-mode))

(provide 'loxlang-mode)
