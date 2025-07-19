; Keywords
[
  "define"
  "lambda"
  "let"
  "let*"
  "letrec"
  "cond"
  "if"
  "else"
  "and"
  "or"
  "not"
  "begin"
  "quote"
  "quasiquote"
  "unquote"
  "unquote-splicing"
] @keyword

; XTLang specific keywords
[
  "bind-func"
  "bind-val"
  "bind-type"
  "bind-alias"
  "bind-poly"
  "closure"
] @keyword.function

; Type annotations (XTLang)
(type_annotation) @type

; Function definitions
(define_function
  name: (identifier) @function)

(bind_func
  name: (identifier) @function)

; Function calls
(call_expression
  function: (identifier) @function.call)

; Variables and identifiers
(identifier) @variable

; Literals
(number) @number
(string) @string
(boolean) @constant.builtin
(character) @character

; Comments
(comment) @comment

; Operators
[
  "+"
  "-"
  "*"
  "/"
  "="
  "<"
  ">"
  "<="
  ">="
  "eq?"
] @operator

; Delimiters
["(" ")" "[" "]" "{" "}"] @punctuation.bracket

; Special forms
(quote) @string.symbol
(quasiquote) @string.symbol
