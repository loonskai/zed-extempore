(keyword) @keyword

(type) @type

(number) @number

(string) @string

(comment) @comment

(list
  (atom (keyword) @keyword (#eq? @keyword "define"))
  (atom (identifier) @function))

(list
  (atom (keyword) @keyword (#eq? @keyword "bind-func"))
  (atom (identifier) @function))

(list
  (atom (keyword) @keyword.function (#eq? @keyword "lambda")))

(list
  (atom (keyword) @keyword.control (#eq? @keyword "let")))

(list
  (atom (keyword) @keyword.control (#any-of? @keyword "if" "cond" "else")))

(list
  (atom (keyword) @operator (#any-of? @keyword "and" "or")))

(list
  (atom (keyword) @operator (#any-of? @keyword "*" "+" "-" "/" "=" "<" ">" "<=" ">=")))

(list
  (atom (keyword) @keyword.storage (#any-of? @keyword "alloc" "zalloc" "halloc" "salloc")))

(list
  (atom (keyword) @constructor (#any-of? @keyword "vector" "tuple" "array")))

(list
  (atom (keyword) @function.builtin (#any-of? @keyword "vector_ref" "tuple_ref" "array_ref" "aref" "tref" "pref")))

(list
  (atom (keyword) @function.builtin (#any-of? @keyword "aset" "tset" "pset" "set")))

(list
  (atom (keyword) @function.builtin (#any-of? @keyword "pref-ptr" "aref-ptr" "tref-ptr")))

(list
  (atom (keyword) @function.builtin (#any-of? @keyword "pfill" "tfill")))

(list
  (atom (keyword) @keyword.control (#any-of? @keyword "while" "dotimes" "begin" "beginz")))

(list
  (atom (keyword) @keyword.directive (#any-of? @keyword "bind-lib" "bind-val" "bind-type")))

(list
  (atom (keyword) @function.builtin (#any-of? @keyword "print" "printf")))

(list
  (atom (keyword) @function.builtin (#eq? @keyword "i64tod")))

(list
  (atom (keyword) @keyword (#eq? @keyword "lambda"))
  (list . (atom (identifier) @parameter)*))

(list
  (atom (keyword) @keyword (#eq? @keyword "let"))
  (list
    (list . (atom (identifier) @variable)*)))

(list . (atom (identifier) @function.call))

(atom (identifier) @variable)

(symbol) @string.special

"(" @punctuation.bracket
")" @punctuation.bracket
