"mkdir -p ~/.config/nvim/syntax && cp [this-file] [there]
"Open a *.lox file and run `:set syntax=lox"`

syntax match LoxString /".*"/
syntax region LoxComment start="/\*" end="\*/" contains=NONE
" \< means "start of a word"
" \ze means to match up to this point, but do not highlight
syntax match LoxFun /\<\w\+\>\ze\s*(/
syntax keyword LoxKeyword fun return var if else class

highlight link LoxKeyword Keyword
highlight link LoxString String
highlight link LoxComment Comment
highlight link LoxFun Function
