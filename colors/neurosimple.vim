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
exec "hi! StatusLine       guifg=" . s:gui07 . " guibg=" . s:gui00 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm07 . " cterm=NONE"
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
exec "hi! Todo             guifg=" . s:gui07 . " guibg=NONE            gui=bold               ctermfg=" . s:cterm07 . "  ctermbg=NONE                 cterm=bold"

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
hi clear @none
hi! link @punctuation.delimiter Delimiter
hi! link @punctuation.delimiter.comment Todo
hi! link @punctuation.bracket Delimiter
hi! link @punctuation.special Delimiter
hi! link @punctuation.special.markdown @strong

hi! link @constant Constant
hi! link @constant.comment Comment
hi! link @number.comment Comment
hi! link @constant.builtin Special
hi! link @constant.macro Define
hi! link @string. String
hi! link @string.regex String
hi! link @string.escape String
hi! link @string.special String
hi! link @character Character
hi! link @character.special String
hi! link @boolean Boolean
hi! link @number Number
hi! link @float Float

hi! link @function Function
hi! link @function.builtin Special
hi! link @function.call @function
hi! link @function.macro Macro
hi! link @parameter Identifier
hi! link @parameter.reference @parameter
hi! link @method Function
hi! link @method.call @method
hi! link @field Identifier
hi! link @property Identifier
hi! link @constructor Special
hi! link @annotation PreProc
hi! link @attribute PreProc
hi! link @namespace Include
hi! link @symbol Identifier

hi! link @conditional Conditional
hi! link @repeat Repeat
hi! link @label Label
hi! link @operator Operator
hi! link @keyword Keyword
hi! link @keyword.function Keyword
hi! link @keyword.operator @operator
hi! link @keyword.return @keyword
hi! link @exception Exception
hi! link @debug Debug
hi! link @define Define
hi! link @pre.proc PreProc
hi! link @storage.class StorageClass

hi! link @todo Todo

hi! link @type Type
hi! link @type.builtin Type
hi! link @type.qualifier Type
hi! link @type.definition Typedef

hi! link @include Include

hi! link @variable Identifier
hi! link @variable.builtin Special

exec "hi! @strong        guifg=" . s:gui07 . " guibg=NONE            gui=bold          ctermfg=" . s:cterm07 . " ctermbg=NONE cterm=bold"
exec "hi! Comment         guifg=" . s:gui08 . " guibg=NONE            gui=italic        ctermfg=" . s:cterm08 . " ctermbg=NONE cterm=italic"
exec "hi! @emphasis      guifg=" . s:gui07 . " guibg=NONE            gui=italic        ctermfg=" . s:cterm07 . " ctermbg=NONE cterm=italic"
exec "hi! @underline     guifg=" . s:gui07 . " guibg=NONE            gui=underline     ctermfg=" . s:cterm07 . " ctermbg=NONE cterm=underline"
exec "hi! @strike        guifg=" . s:gui07 . " guibg=NONE            gui=strikethrough ctermfg=" . s:cterm07 . " ctermbg=NONE cterm=strikethrough"

hi! link @math Special
hi! link @text @none
hi! link @text.reference Number
hi! link @text.title @strong
hi! link @text.uri Underlined
hi! link @text.strong @strong
hi! link @text.emphasis @emphasis
hi! link @text.literal String
hi! link @text.warning Todo
hi! link @text.danger Todo
hi! link @text.strike @strike
hi! link @environment Macro
hi! link @environment.name Type
hi! link @title Title
hi! link @literal String

hi! link @comment Comment
hi! link @note SpecialComment
hi! link @warning Todo
hi! link @danger WarningMsg

hi! link @tag Label
hi! link @tag.delimiter Delimiter
hi! link @tag.attribute @property

hi! link @error DiagnosticError

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

" ### Highlights
"
" As languages differ quite a lot, here is a set of captures available to you when building a `highlights.scm` query.
" One important thing to note is that many of these capture groups are not supported by `neovim` for now, and will not have any
" effect on highlighting. We will work on improving highlighting in the near future though.
"
" #### Misc
"
" ```scheme
" @comment  ; line and block comments
" @error    ; syntax/parser errors
" @none     ; completely disable the highlight
" @preproc  ; various preprocessor directives & shebangs
" @define   ; preprocessor definition directives
" @operator ; symbolic operators (e.g. `+` / `*`)
" ```
"
" #### Punctuation
"
" ```scheme
" @punctuation.delimiter ; delimiters (e.g. `;` / `.` / `,`)
" @punctuation.bracket   ; brackets (e.g. `()` / `{}` / `[]`)
" @punctuation.special   ; special symbols (e.g. `{}` in string interpolation)
" ```
"
" #### Literals
"
" ```scheme
" @string            ; string literals
" @string.regex      ; regular expressions
" @string.escape     ; escape sequences
" @string.special    ; other special strings (e.g. dates)
"
" @character         ; character literals
" @character.special ; special characters (e.g. wildcards)
"
" @boolean           ; boolean literals
" @number            ; numeric literals
" @float             ; floating-point number literals
" ```
"
" #### Functions
"
" ```scheme
" @function         ; function definitions
" @function.builtin ; built-in functions
" @function.call    ; function calls
" @function.macro   ; preprocessor macros
"
" @method           ; method definitions
" @method.call      ; method calls
"
" @constructor      ; constructor calls and definitions
" @parameter        ; parameters of a function
" ```
"
" #### Keywords
"
" ```scheme
" @keyword          ; various keywords
" @keyword.function ; keywords that define a function (e.g. `func` in Go, `def` in Python)
" @keyword.operator ; operators that are English words (e.g. `and` / `or`)
" @keyword.return   ; keywords like `return` and `yield`
"
" @conditional      ; keywords related to conditionals (e.g. `if` / `else`)
" @repeat           ; keywords related to loops (e.g. `for` / `while`)
" @debug            ; keywords related to debugging
" @label            ; GOTO and other labels (e.g. `label:` in C)
" @include          ; keywords for including modules (e.g. `import` / `from` in Python)
" @exception        ; keywords related to exceptions (e.g. `throw` / `catch`)
" ```
"
" #### Types
"
" ```scheme
" @type            ; type or class definitions and annotations
" @type.builtin    ; built-in types
" @type.definition ; type definitions (e.g. `typedef` in C)
" @type.qualifier  ; type qualifiers (e.g. `const`)
"
" @storageclass    ; visibility/life-time/etc. modifiers (e.g. `static`)
" @attribute       ; attribute annotations (e.g. Python decorators)
" @field           ; object and struct fields
" @property        ; similar to `@field`
" ```
"
" #### Identifiers
"
" ```scheme
" @variable         ; various variable names
" @variable.builtin ; built-in variable names (e.g. `this`)
"
" @constant          ; constant identifiers
" @constant.builtin  ; built-in constant values
" @constant.macro    ; constants defined by the preprocessor
"
" @namespace        ; modules or namespaces
" @symbol           ; symbols or atoms
" ```
"
" #### Text
"
" Mainly for markup languages.
"
" ```scheme
" @text                  ; non-structured text
" @text.strong           ; bold text
" @text.emphasis         ; text with emphasis
" @text.underline        ; underlined text
" @text.strike           ; strikethrough text
" @text.title            ; text that is part of a title
" @text.literal          ; literal or verbatim text
" @text.uri              ; URIs (e.g. hyperlinks)
" @text.math             ; math environments (e.g. `$ ... $` in LaTeX)
" @text.environment      ; text environments of markup languages
" @text.environment.name ; text indicating the type of an environment
" @text.reference        ; text references, footnotes, citations, etc.
"
" @text.todo             ; todo notes
" @text.note             ; info notes
" @text.warning          ; warning notes
" @text.danger           ; danger/error notes
" ```
"
" #### Tags
"
" Used for XML-like tags.
"
" ```scheme
" @tag           ; XML tag names
" @tag.attribute ; XML tag attributes
" @tag.delimiter ; XML tag delimiters
" ```
"
" #### Conceal
"
"
" ```scheme
" @conceal ; for captures that are only used for concealing
" ```
"
" `@conceal` must be followed by `(#set! conceal "")`.
"
" #### Spell
"
" ```scheme
" @spell ; for defining regions to be spellchecked
" ```
"
" #### Non-standard
"
" These captures are used by some languages but don't have any default highlights.
" They fall back to the parent capture if they are not manually defined.
"
" ```scheme
" @variable.global
" ```
"
" ### Locals
"
" ```scheme
" @definition            ; various definitions
" @definition.constant   ; constants
" @definition.function   ; functions
" @definition.method     ; methods
" @definition.var        ; variables
" @definition.parameter  ; parameters
" @definition.macro      ; preprocessor macros
" @definition.type       ; types or classes
" @definition.field      ; fields or properties
" @definition.enum       ; enumerations
" @definition.namespace  ; modules or namespaces
" @definition.import     ; imported names
" @definition.associated ; the associated type of a variable
"
" @scope                 ; scope block
" @reference             ; identifier reference
" ```

" }}}}
