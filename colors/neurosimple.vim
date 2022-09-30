" vim: set fdm=marker fmr={{{{,}}}} :

" SETUP {{{{

" GUI color definitions
let s:gui01        = "#ff5555"
let s:gui02        = "#50fa7b"
let s:gui03        = "#f1fa8c"
let s:gui04        = "#bd93f9"
let s:gui05        = "#ff79c6"
let s:gui06        = "#8be9fd"
let s:gui09        = "#ff6e6e"
let s:gui10        = "#69ff94"
let s:gui11        = "#ffffa5"
let s:gui12        = "#d6acff"
let s:gui13        = "#ff92df"
let s:gui14        = "#a4ffff"
if &background ==# 'light'
  let s:gui00        = "#ffffff"
  let s:gui07        = "#6272a4"
  let s:gui08        = "#f8f8f2"
  let s:gui15        = "#282a36"
  let s:gui15        = "#f8f8f2"
else
  let s:gui00        = "#282a36"
  let s:gui07        = "#f8f8f2"
  let s:gui08        = "#6272a4"
  let s:gui15        = "#ffffff"
  let s:gui16        = "#21222c"
endif

" Terminal color definitions
let s:cterm00      = "00"
let s:cterm01      = "01"
let s:cterm02      = "02"
let s:cterm03      = "03"
let s:cterm04      = "04"
let s:cterm05      = "05"
let s:cterm06      = "06"
let s:cterm07      = "07"
let s:cterm08      = "08"
let s:cterm09      = "09"
let s:cterm10      = "10"
let s:cterm11      = "11"
let s:cterm12      = "12"
let s:cterm13      = "13"
let s:cterm14      = "14"
let s:cterm15      = "15"

" Neovim terminal colours
if has("nvim")
    let g:terminal_color_1 =  "#cc0403"
    let g:terminal_color_2 =  "#19cb00"
    let g:terminal_color_3 =  "#cecb00"
    let g:terminal_color_4 =  "#0d73cc"
    let g:terminal_color_5 =  "#cb1ed1"
    let g:terminal_color_6 =  "#0dcdcd"
    let g:terminal_color_9 =  "#f2201f"
    let g:terminal_color_10 = "#23fd00"
    let g:terminal_color_11 = "#fffd00"
    let g:terminal_color_12 = "#1a8fff"
    let g:terminal_color_13 = "#fd28ff"
    let g:terminal_color_14 = "#14ffff"

  if &background ==# 'light'
    let g:terminal_color_0 =  "#ffffff"
    let g:terminal_color_7 =  "#767676"
    let g:terminal_color_8 =  "#dddddd"
    let g:terminal_color_15 = "#000000"
  else
    let g:terminal_color_0 = "#000000"
    let g:terminal_color_7 =  "#dddddd"
    let g:terminal_color_8 =  "#767676"
    let g:terminal_color_15 =  "#ffffff"
  endif

  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_15
endif

hi clear
if exists('syntax on') | syntax reset | endif
let g:colors_name='neurosimple'

" HIGHLIGHTS ------------------------------------------------------------------
" :help highlight-default

exec "hi! Normal           guifg=" . s:gui07 . " guibg=NONE            gui=NONE          ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=NONE"
exec "hi! CursorLine       guifg=" . s:gui07 . " guibg=NONE            gui=underline     ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=underline"
exec "hi! Directory        guifg=" . s:gui07 . " guibg=NONE            gui=bold          ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=bold"
exec "hi! DiffAdd          guifg=" . s:gui00 . " guibg=" . s:gui02 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm02 . " cterm=NONE"
exec "hi! DiffChange       guifg=" . s:gui00 . " guibg=" . s:gui07 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm07 . " cterm=NONE"
exec "hi! DiffDelete       guifg=" . s:gui00 . " guibg=" . s:gui01 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm01 . " cterm=NONE"
exec "hi! DiffText         guifg=" . s:gui00 . " guibg=" . s:gui04 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm04 . " cterm=NONE"
exec "hi! ErrorMsg         guifg=" . s:gui00 . " guibg=" . s:gui01 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm01 . " cterm=NONE"
exec "hi! Folded           guifg=" . s:gui08 . " guibg=NONE            gui=italic        ctermfg=" . s:cterm08 . " ctermbg=NONE              cterm=italic"
exec "hi! IncSearch        guifg=" . s:gui00 . " guibg=" . s:gui01 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm01 . " cterm=NONE"
exec "hi! CurSearch        guifg=" . s:gui00 . " guibg=" . s:gui01 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm01 . " cterm=NONE"
exec "hi! Substitute       guifg=" . s:gui00 . " guibg=" . s:gui03 . " gui=bold          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm03 . " cterm=bold"
exec "hi! MatchParen       guifg=" . s:gui07 . " guibg=NONE            gui=bold          ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=bold"
exec "hi! MoreMsg          guifg=" . s:gui07 . " guibg=NONE            gui=bold          ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=bold"
exec "hi! NonText          guifg=" . s:gui08 . " guibg=NONE            gui=NONE          ctermfg=" . s:cterm08 . " ctermbg=NONE              cterm=NONE"
exec "hi! Pmenu            guifg=" . s:gui07 . " guibg=" . s:gui16 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm08 . " cterm=NONE"
exec "hi! PmenuSel         guifg=" . s:gui15 . " guibg=" . s:gui08 . " gui=bold          ctermfg=" . s:cterm15 . " ctermbg=" . s:cterm00 . " cterm=bold"
exec "hi! PmenuSbar        guifg=NONE            guibg=" . s:gui00 . " gui=NONE          ctermfg=NONE              ctermbg=" . s:cterm00 . " cterm=NONE"
exec "hi! PmenuThumb       guifg=NONE            guibg=" . s:gui07 . " gui=NONE          ctermfg=NONE              ctermbg=" . s:cterm07 . " cterm=NONE"
exec "hi! QuickFixLine     guifg=NONE            guibg=NONE            gui=underline     ctermfg=NONE              ctermbg=NONE              cterm=underline"
exec "hi! Search           guifg=" . s:gui00 . " guibg=" . s:gui03 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm03 . " cterm=NONE"
exec "hi! SpecialKey       guifg=" . s:gui08 . " guibg=NONE            gui=NONE          ctermfg=" . s:cterm08 . " ctermbg=NONE              cterm=NONE"
exec "hi! SpellBad         guifg=" . s:gui07 . " guibg=NONE            gui=undercurl     ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=undercurl"
exec "hi! SpellCap         guifg=" . s:gui07 . " guibg=NONE            gui=undercurl     ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=undercurl"
exec "hi! SpellLocal       guifg=" . s:gui07 . " guibg=NONE            gui=undercurl     ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=undercurl"
exec "hi! SpellRare        guifg=" . s:gui07 . " guibg=NONE            gui=undercurl     ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=undercurl"
exec "hi! StatusLine       guifg=" . s:gui00 . " guibg=" . s:gui07 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm07 . " cterm=NONE"
exec "hi! StatusLineNC     guifg=" . s:gui08 . " guibg=" . s:gui07 . " gui=NONE          ctermfg=" . s:cterm08 . " ctermbg=" . s:cterm07 . " cterm=NONE"
exec "hi! TabLine          guifg=" . s:gui00 . " guibg=" . s:gui07 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm07 . " cterm=NONE"
exec "hi! TabLineFill      guifg=" . s:gui00 . " guibg=" . s:gui07 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm07 . " cterm=NONE"
exec "hi! Title            guifg=" . s:gui07 . " guibg=NONE            gui=bold          ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=bold"
exec "hi! Visual           guifg=" . s:gui07 . " guibg=" . s:gui00 . " gui=inverse       ctermfg=" . s:cterm07 . " ctermbg=" . s:cterm00 . " cterm=inverse"
exec "hi! WarningMsg       guifg=" . s:gui07 . " guibg=NONE            gui=bold          ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=bold"
exec "hi! WildMenu         guifg=" . s:gui07 . " guibg=NONE            gui=bold          ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=bold"

hi! link ModeMsg MoreMsg
hi! link SpecialComment Comment

" :help group-name

exec "hi! Comment          guifg=" . s:gui08 . " guibg=NONE            gui=italic             ctermfg=" . s:cterm08 . "  ctermbg=NONE                 cterm=italic"
exec "hi! String           guifg=" . s:gui02 . " guibg=NONE            gui=NONE               ctermfg=" . s:cterm02 . "  ctermbg=NONE                 cterm=NONE"
exec "hi! Boolean          guifg=" . s:gui03 . " guibg=NONE            gui=NONE               ctermfg=" . s:cterm03 . "  ctermbg=NONE                 cterm=NONE"
exec "hi! Number           guifg=" . s:gui05 . " guibg=NONE            gui=NONE               ctermfg=" . s:cterm05 . "  ctermbg=NONE                 cterm=NONE"
exec "hi! Underlined       guifg=" . s:gui07 . " guibg=NONE            gui=underline          ctermfg=" . s:cterm07 . "  ctermbg=NONE                 cterm=underline"
exec "hi! Error            guifg=" . s:gui00 . " guibg=" . s:gui01 . " gui=bold               ctermfg=" . s:cterm00 . "  ctermbg=" . s:cterm01 . "    cterm=bold"
exec "hi! Todo             guifg=" . s:gui07 . " guibg=NONE            gui=bold,underline     ctermfg=" . s:cterm07 . "  ctermbg=NONE                 cterm=bold,underline"

hi! link VertSplit Normal
hi! link LineNr Normal
hi! link Question Normal
hi! link TabLineSel Normal
hi! link Character String
hi! link Float Number
hi! link Constant Normal
hi! link Identifier Normal
hi! link Statement Normal
hi! link PreProc Normal
hi! link Type Normal
" hi! link Special Normal

" Diagnostics:
exec "hi! DiagnosticError          guifg=" . s:gui01 . " ctermfg=" . s:cterm01
exec "hi! DiagnosticWarn           guifg=" . s:gui03 . " ctermfg=" . s:cterm03
exec "hi! DiagnosticInfo           guifg=" . s:gui02 . " ctermfg=" . s:cterm02
exec "hi! DiagnosticHint           guifg=" . s:gui04 . " ctermfg=" . s:cterm04
exec "hi! DiagnosticUnderlineError guifg=" . s:gui01 . " guisp=" . s:gui01 . " gui=underline ctermfg=" . s:cterm01 . " cterm=underline"
exec "hi! DiagnosticUnderlineWarn  guifg=" . s:gui03 . " guisp=" . s:gui03 . " gui=underline ctermfg=" . s:cterm03 . " cterm=underline"
exec "hi! DiagnosticUnderlineInfo  guifg=" . s:gui02 . " guisp=" . s:gui02 . " gui=underline ctermfg=" . s:cterm02 . " cterm=underline"
exec "hi! DiagnosticUnderlineHint  guifg=" . s:gui04 . " guisp=" . s:gui04 . " gui=underline ctermfg=" . s:cterm04 . " cterm=underline"

" Telescope:
hi! TelescopeSelection       gui=bold cterm=bold
hi! TelescopeMatching        gui=bold cterm=bold

hi! link TelescopeMultiSelection Visual

" diff.vim:
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange
hi! link diffAdded DiffAdd
hi! link diffLine DiffText

" j-hui/fidget.nvim:
hi! link FidgetTitle NonText

" which-key.nvim
exec "hi! WhichKey            guifg=" . s:gui07 . " guibg=" . "NONE" . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . "NONE" . " cterm=NONE"
exec "hi! WhichKeySeparator   guifg=" . s:gui07 . " guibg=" . "NONE" . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . "NONE" . " cterm=NONE"
exec "hi! WhichKeyGroup       guifg=" . s:gui07 . " guibg=" . "NONE" . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . "NONE" . " cterm=NONE"
exec "hi! WhichKeyDesc        guifg=" . s:gui07 . " guibg=" . "NONE" . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . "NONE" . " cterm=NONE"
exec "hi! WhichKeyValue       guifg=" . s:gui07 . " guibg=" . "NONE" . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . "NONE" . " cterm=NONE"

" kylechui/nvim-surround
hi! link NvimSurroundHighlight IncSearch

" nvim-treesitter
hi clear TSNone
hi! link TSPunctDelimiter Delimiter
hi! link TSPunctBracket Delimiter
hi! link TSPunctSpecial Delimiter

hi! link TSConstant Constant
hi! link TSConstBuiltin Special
hi! link TSConstMacro Define
hi! link TSString String
hi! link TSStringRegex String
hi! link TSStringEscape String
hi! link TSStringSpecial String
hi! link TSCharacter Character
hi! link TSCharacterSpecial String
hi! link TSNumber Number
hi! link TSBoolean Boolean
hi! link TSFloat Float

hi! link TSFunction Function
hi! link TSFunctionCall TSFunction
hi! link TSFuncBuiltin Special
hi! link TSFuncMacro Macro
hi! link TSParameter Identifier
hi! link TSParameterReference TSParameter
hi! link TSMethod Function
hi! link TSMethodCall TSMethod
hi! link TSField Identifier
hi! link TSProperty Identifier
hi! link TSConstructor Special
hi! link TSAnnotation PreProc
hi! link TSAttribute PreProc
hi! link TSNamespace Include
hi! link TSSymbol Identifier

hi! link TSConditional Conditional
hi! link TSRepeat Repeat
hi! link TSLabel Label
hi! link TSOperator Operator
hi! link TSKeyword Keyword
hi! link TSKeywordFunction Keyword
hi! link TSKeywordOperator TSOperator
hi! link TSKeywordReturn TSKeyword
hi! link TSException Exception
hi! link TSDebug Debug
hi! link TSDefine Define
hi! link TSPreProc PreProc
hi! link TSStorageClass StorageClass

hi! link TSTodo Todo

hi! link TSType Type
hi! link TSTypeBuiltin Type
hi! link TSTypeQualifier Type
hi! link TSTypeDefinition Typedef

hi! link TSInclude Include

hi! link TSVariable Identifier
hi! link TSVariableBuiltin Special

hi! link TSText TSNone
exec "hi! TSStrong        guifg=" . s:gui07 . " guibg=NONE            gui=bold          ctermfg=" . s:cterm07 . " ctermbg=NONE cterm=bold"
exec "hi! Comment         guifg=" . s:gui08 . " guibg=NONE            gui=italic        ctermfg=" . s:cterm08 . " ctermbg=NONE cterm=italic"
exec "hi! TSEmphasis      guifg=" . s:gui08 . " guibg=NONE            gui=italic        ctermfg=" . s:cterm08 . " ctermbg=NONE cterm=italic"
exec "hi! TSUnderline     guifg=" . s:gui07 . " guibg=NONE            gui=underline     ctermfg=" . s:cterm07 . " ctermbg=NONE cterm=underline"
exec "hi! TSStrike        guifg=" . s:gui07 . " guibg=NONE            gui=strikethrough ctermfg=" . s:cterm07 . " ctermbg=NONE cterm=strikethrough"

hi! link TSMath Special
hi! link TSTextReference Constant
hi! link TSEnvironment Macro
hi! link TSEnvironmentName Type
hi! link TSTitle Title
hi! link TSLiteral String
hi! link TSURI Underlined

hi! link TSComment Comment
hi! link TSNote SpecialComment
hi! link TSWarning Todo
hi! link TSDanger WarningMsg

hi! link TSTag Label
hi! link TSTagDelimiter Delimiter
hi! link TSTagAttribute TSProperty

hi! link TSError DiagnosticError

" For some reason, this needs to be here for CmpItemKindDefault to
" correctly link to Normal:
exec "hi! Special          guifg=" . s:gui07 . " guibg=NONE  gui=NONE ctermfg=" . s:cterm07 . " ctermbg=NONE cterm=NONE"

" }}}}

" HELP {{{{

" From :h group-name
" *Constant any constant
"  String   a string constant: "this is a string"
"  Character  a character constant: 'c', '\n'
"  Number   a number constant: 234, 0xff
"  Boolean  a boolean constant: TRUE, false
"  Float    a floating point constant: 2.3e10
"
" *Identifier any variable name
"  Function function name (also: methods for classes)
"
" *Statement  any statement
"  Conditional  if, then, else, endif, switch, etc.
"  Repeat   for, do, while, etc.
"  Label    case, default, etc.
"  Operator "sizeof", "+", "*", etc.
"  Keyword  any other keyword
"  Exception  try, catch, throw
"
"  *Comment any comment
" *PreProc  generic Preprocessor
"  Include  preprocessor #include
"  Define   preprocessor #define
"  Macro    same as Define
"  PreCondit  preprocessor #if, #else, #endif, etc.
"
" *Type   int, long, char, etc.
"  StorageClass static, register, volatile, etc.
"  Structure  struct, union, enum, etc.
"  Typedef  A typedef
"
" *Special  any special symbol
"  SpecialChar  special character in a constant
"  Tag    you can use CTRL-] on this
"  Delimiter  character that needs attention
"  SpecialComment special things inside a comment
"  Debug    debugging statements
"
" *Underlined text that stands out, HTML links
"
" *Ignore   left blank, hidden  |hl-Ignore|
"
" *Error    any erroneous construct
"
" *Todo   anything that needs extra attention; mostly the keywords TODO FIXME and XXX
"
" The names marked with * are the preferred groups; the others are minor groups.
" For the preferred groups, the "syntax.vim" file contains default highlighting.
" The minor groups are linked to the preferred groups, so they get the same
" highlighting.  You can override these defaults by using ":highlight" commands
" after sourcing the "syntax.vim" file.

" HIGHLIGHTS                                        *nvim-treesitter-highlights*
"
" The following is a list of highlights groups, the syntactic elements they
" apply to, and some examples.
"
" 							      *hl-TSAttribute*
" `TSAttribute`
" Annotations that can be attached to the code to denote some kind of meta
" information. e.g. C++/Dart attributes.
"
" 								*hl-TSBoolean*
" `TSBoolean`
" Boolean literals: `True` and `False` in Python.
"
" 							      *hl-TSCharacter*
" `TSCharacter`
" Character literals: `'a'` in C.
"
" 						       *hl-TSCharacterSpecial*
" `TSCharacterSpecial`
" Special characters.
"
" 								*hl-TSComment*
" `TSComment`
" Line comments and block comments.
"
" 							    *hl-TSConditional*
" `TSConditional`
" Keywords related to conditionals: `if`, `when`, `cond`, etc.
"
" 							       *hl-TSConstant*
" `TSConstant`
" Constants identifiers. These might not be semantically constant.
" E.g. uppercase variables in Python.
"
" 							   *hl-TSConstBuiltin*
" `TSConstBuiltin`
" Built-in constant values: `nil` in Lua.
"
" 							     *hl-TSConstMacro*
" `TSConstMacro`
" Constants defined by macros: `NULL` in C.
"
" 							    *hl-TSConstructor*
" `TSConstructor`
" Constructor calls and definitions: `{}` in Lua, and Java constructors.
"
" 								  *hl-TSDebug*
" `TSDebug`
" Debugging statements.
"
" 								 *hl-TSDefine*
" `TSDefine`
" Preprocessor #define statements.
"
" 								  *hl-TSError*
" `TSError`
" Syntax/parser errors. This might highlight large sections of code while the
" user is typing still incomplete code, use a sensible highlight.
"
" 							      *hl-TSException*
" `TSException`
" Exception related keywords: `try`, `except`, `finally` in Python.
"
" 								  *hl-TSField*
" `TSField`
" Object and struct fields.
"
" 								  *hl-TSFloat*
" `TSFloat`
" Floating-point number literals.
"
" 							       *hl-TSFunction*
" `TSFunction`
" Function definitions.
"
" 							   *hl-TSFunctionCall*
" `TSFunctionCall`
" Function calls.
"
" 							    *hl-TSFuncBuiltin*
" `TSFuncBuiltin`
" Built-in functions: `print` in Lua.
"
" 							      *hl-TSFuncMacro*
" `TSFuncMacro`
" Macro defined functions (calls and definitions): each `macro_rules` in
" Rust.
"
" 								*hl-TSInclude*
" `TSInclude`
" File or module inclusion keywords: `#include` in C, `use` or `extern crate` in
" Rust.
"
" 								*hl-TSKeyword*
" `TSKeyword`
" Keywords that don't fit into other categories.
"
" 							*hl-TSKeywordFunction*
" `TSKeywordFunction`
" Keywords used to define a function: `function` in Lua, `def` and `lambda` in
" Python.
"
" 							*hl-TSKeywordOperator*
" `TSKeywordOperator`
" Unary and binary operators that are English words: `and`, `or` in Python;
" `sizeof` in C.
"
" 							  *hl-TSKeywordReturn*
" `TSKeywordReturn`
" Keywords like `return` and `yield`.
"
" 								  *hl-TSLabel*
" `TSLabel`
" GOTO labels: `label:` in C, and `::label::` in Lua.
"
" 								 *hl-TSMethod*
" `TSMethod`
" Method definitions.
"
" 							     *hl-TSMethodCall*
" `TSMethodCall`
" Method calls.
"
" 							      *hl-TSNamespace*
" `TSNamespace`
" Identifiers referring to modules and namespaces.
"
" 								     *hl-None*
" `TSNone`
" No highlighting (sets all highlight arguments to `NONE`). This group is used
" to clear certain ranges, for example, string interpolations. Don't change the
" values of this highlight group.
"
" 								 *hl-TSNumber*
" `TSNumber`
" Numeric literals that don't fit into other categories.
"
" 							       *hl-TSOperator*
" `TSOperator`
" Binary or unary operators: `+`, and also `->` and `*` in C.
"
" 							      *hl-TSParameter*
" `TSParameter`
" Parameters of a function.
"
" 						     *hl-TSParameterReference*
" `TSParameterReference`
" References to parameters of a function.
"
" 								*hl-TSPreProc*
" `TSPreProc`
" Preprocessor #if, #else, #endif, etc.
"
" 							       *hl-TSProperty*
" `TSProperty`
" Same as `TSField`.
"
" 							 *hl-TSPunctDelimiter*
" `TSPunctDelimiter`
" Punctuation delimiters: Periods, commas, semicolons, etc.
"
" 							   *hl-TSPunctBracket*
" `TSPunctBracket`
" Brackets, braces, parentheses, etc.
"
" 							   *hl-TSPunctSpecial*
" `TSPunctSpecial`
" Special punctuation that doesn't fit into the previous categories.
"
" 								 *hl-TSRepeat*
" `TSRepeat`
" Keywords related to loops: `for`, `while`, etc.
"
" 							     *hl-StorageClass*
" `TSStorageClass`
" Keywords that affect how a variable is stored: `static`, `comptime`, `extern`,
" etc.
"
" 								 *hl-TSString*
" `TSString`
" String literals.
"
" 							    *hl-TSStringRegex*
" `TSStringRegex`
" Regular expression literals.
"
" 							   *hl-TSStringEscape*
" `TSStringEscape`
" Escape characters within a string: `\n`, `\t`, etc.
"
" 							  *hl-TSStringSpecial*
" `TSStringSpecial`
" Strings with special meaning that don't fit into the previous categories.
"
" 								 *hl-TSSymbol*
" `TSSymbol`
" Identifiers referring to symbols or atoms.
"
" 								    *hl-TSTag*
" `TSTag`
" Tags like HTML tag names.
"
" 							   *hl-TSTagAttribute*
" `TSTagAttribute`
" HTML tag attributes.
"
" 							   *hl-TSTagDelimiter*
" `TSTagDelimiter`
" Tag delimiters like `<` `>` `/`.
"
" 								   *hl-TSText*
" `TSText`
" Non-structured text. Like text in a markup language.
"
" 								 *hl-TSSTrong*
" `TSStrong`
" Text to be represented in bold.
"
" 							       *hl-TSEmphasis*
" `TSEmphasis`
" Text to be represented with emphasis.
"
" 							      *hl-TSUnderline*
" `TSUnderline`
" Text to be represented with an underline.
"
" 								 *hl-TSStrike*
" `TSStrike`
" Strikethrough text.
"
" 								  *hl-TSTitle*
" `TSTitle`
" Text that is part of a title.
"
" 								*hl-TSLiteral*
" `TSLiteral`
" Literal or verbatim text.
"
" 								    *hl-TSURI*
" `TSURI`
" URIs like hyperlinks or email addresses.
"
" 								   *hl-TSMath*
" `TSMath`
" Math environments like LaTeX's `$ ... $`.
"
" 							  *hl-TSTextReference*
" `TSTextReference`
" Footnotes, text references, citations, etc.
"
" 							     *hl-TSEnvironment*
" `TSEnvironment`
" Text environments of markup languages.
"
" 							 *hl-TSEnvironmentName*
" `TSEnvironmentName`
" Text/string indicating the type of text environment. Like the name of a
" `\begin` block in LaTeX.
"
" 								   *hl-TSNote*
" `TSNote`
" Text representation of an informational note.
"
" 								   *TSWarning*
" `TSWarning`
" Text representation of a warning note.
"
" 								    *TSDanger*
" `TSDanger`
" Text representation of a danger note.
"
" 								   *hl-TSTodo*
" `TSTodo`
" Anything that needs extra attention, such as keywords like TODO or FIXME.
"
" 								   *hl-TSType*
" `TSType`
" Type (and class) definitions and annotations.
"
" 							    *hl-TSTypeBuiltin*
" `TSTypeBuiltin`
" Built-in types: `i32` in Rust.
"
" 							  *hl-TSTypeQualifier*
" `TSTypeQualifier`
" Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.
"
" 							 *hl-TSTypeDefinition*
" `TSTypeDefinition`
" Type definitions, e.g. `typedef` in C.
"
" 							       *hl-TSVariable*
" `TSVariable`
" Variable names that don't fit into other categories.
"
" 							*hl-TSVariableBuiltin*
" `TSVariableBuiltin`
" Variable names defined by the language: `this` or `self` in Javascript.

" }}}}
