; Use Scheme highlighting as a base for now
; This will work with the tree-sitter-scheme grammar

; Keywords
(symbol) @keyword
 (#match? @keyword "^(define|lambda|let|let\\*|letrec|cond|if|else|and|or|not|begin|quote|quasiquote|unquote|unquote-splicing|bind-func|bind-val|bind-type|bind-alias|bind-poly|closure)$")

; Function definitions
(list . (symbol) @keyword (#eq? @keyword "define")
      . (symbol) @function)

(list . (symbol) @keyword (#eq? @keyword "bind-func")
      . (symbol) @function)

; Numbers
(number) @number

; Strings
(string) @string

; Comments
(comment) @comment

; Booleans
(boolean) @constant.builtin

; Characters
(character) @character

; Brackets
["(" ")" "[" "]" "{" "}"] @punctuation.bracket

; Operators (common Lisp/Scheme operators)
(symbol) @operator
 (#match? @operator "^(\\+|\\-|\\*|/|=|<|>|<=|>=|eq\\?|equal\\?|null\\?|pair\\?|list\\?|number\\?|string\\?|symbol\\?|procedure\\?)$")

; Everything else as identifier
(symbol) @variable
