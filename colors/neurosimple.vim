" SETUP -----------------------------------------------------------------------

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
else
  let s:gui00        = "#282a36"
  let s:gui07        = "#f8f8f2"
  let s:gui08        = "#6272a4"
  let s:gui15        = "#ffffff"
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
exec "hi! IncSearch        guifg=" . s:gui00 . " guibg=" . s:gui03 . " gui=bold          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm03 . " cterm=bold"
exec "hi! Substitute       guifg=" . s:gui07 . " guibg=" . s:gui03 . " gui=bold          ctermfg=" . s:cterm07 . " ctermbg=" . s:cterm03 . " cterm=bold"
exec "hi! MatchParen       guifg=" . s:gui07 . " guibg=NONE            gui=bold          ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=bold"
exec "hi! MoreMsg          guifg=" . s:gui07 . " guibg=NONE            gui=bold          ctermfg=" . s:cterm07 . " ctermbg=NONE              cterm=bold"
exec "hi! NonText          guifg=" . s:gui08 . " guibg=NONE            gui=NONE          ctermfg=" . s:cterm08 . " ctermbg=NONE              cterm=NONE"
exec "hi! Pmenu            guifg=" . s:gui00 . " guibg=" . s:gui07 . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . s:cterm07 . " cterm=NONE"
exec "hi! PmenuSel         guifg=" . s:gui15 . " guibg=" . s:gui00 . " gui=bold          ctermfg=" . s:cterm15 . " ctermbg=" . s:cterm00 . " cterm=bold"
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

" :help group-name

exec "hi! Comment          guifg=" . s:gui08 . " guibg=NONE            gui=italic             ctermfg=" . s:cterm08 . "  ctermbg=NONE                 cterm=italic"
exec "hi! String           guifg=" . s:gui02 . " guibg=NONE            gui=NONE               ctermfg=" . s:cterm02 . "  ctermbg=NONE                 cterm=NONE"
exec "hi! Boolean          guifg=" . s:gui03 . " guibg=NONE            gui=NONE               ctermfg=" . s:cterm03 . "  ctermbg=NONE                 cterm=NONE"
exec "hi! Number           guifg=" . s:gui05 . " guibg=NONE            gui=NONE               ctermfg=" . s:cterm05 . "  ctermbg=NONE                 cterm=NONE"
exec "hi! Underlined       guifg=" . s:gui07 . " guibg=NONE            gui=underline          ctermfg=" . s:cterm07 . "  ctermbg=NONE                 cterm=underline"
exec "hi! Error            guifg=" . s:gui07 . " guibg=" . s:gui01 . " gui=NONE               ctermfg=" . s:cterm07 . "  ctermbg=" . s:cterm01 . "    cterm=NONE"
exec "hi! Todo             guifg=" . s:gui07 . " guibg=NONE            gui=bold,underline     ctermfg=" . s:cterm07 . "  ctermbg=NONE                 cterm=bold,underline"

" This groups doesn't need highlighting:
hi clear VertSplit
hi clear LineNr
hi clear Question
hi clear TabLineSel
hi clear Character
hi clear Float
hi clear Constant
hi clear Identifier
hi clear Statement
hi clear PreProc
hi clear Type
hi clear Special


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
exec "hi! WhichKey            guifg=" . s:gui00 . " guibg=" . "NONE" . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . "NONE" . " cterm=NONE"
exec "hi! WhichKeySeparator   guifg=" . s:gui00 . " guibg=" . "NONE" . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . "NONE" . " cterm=NONE"
exec "hi! WhichKeyGroup       guifg=" . s:gui00 . " guibg=" . "NONE" . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . "NONE" . " cterm=NONE"
exec "hi! WhichKeyDesc        guifg=" . s:gui00 . " guibg=" . "NONE" . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . "NONE" . " cterm=NONE"
exec "hi! WhichKeyValue       guifg=" . s:gui00 . " guibg=" . "NONE" . " gui=NONE          ctermfg=" . s:cterm00 . " ctermbg=" . "NONE" . " cterm=NONE"

" For some reason, this needs to be here for CmpItemKindDefault to
" correctly link to Normal:
" exec "hi! Special          guifg=" . s:gui07 . " guibg=NONE  gui=NONE ctermfg=" . s:cterm07 . " ctermbg=NONE cterm=NONE"
