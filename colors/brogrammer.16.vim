" Vim color file
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2019 Nov 01

" This color scheme for 16 dark cterm.

highlight clear Normal

" Reset background to default.
" Note:
"   If background reset to default, this theme can be only for light, if later
"   switch to dark, colorscheme changes to default. Should use this reset to
"   default ???
" set background&


" Remove all existing highlighting and set the defaults.
" Note:
"   That ":highlight clear" uses the value of 'background', thus set it before
"   this command.
highlight clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
    syntax reset
endif

if &t_Co > 16
  " FIXME: temporary hack ???
  set notermguicolors
  set t_Co=16
endif

" Set g:colors_name to current file name.
let g:colors_name = expand('<sfile>:t:r')

" ANSI 16 Colors (4-bit).
" Note:
"   :h cterm-colors
"   :h group-name
"   :h highlight-groups
"   :h highlight-cterm
let s:ANSIColors = {
  \ 'black':    { 'normal': 0, 'bright':  8 },
  \ 'red':      { 'normal': 1, 'bright':  9 },
  \ 'green':    { 'normal': 2, 'bright': 10 },
  \ 'yellow':   { 'normal': 3, 'bright': 11 },
  \ 'blue':     { 'normal': 4, 'bright': 12 },
  \ 'magenta':  { 'normal': 5, 'bright': 13 },
  \ 'cyan':     { 'normal': 6, 'bright': 14 },
  \ 'white':    { 'normal': 7, 'bright': 15 },
\ }

function! s:Highlight(args)
  execute 'highlight ' . join(a:args, ' ')
endfunction

if &background == "light"
  " Light colors {{{
  " TODO: add highlights for light background

  call s:Highlight([
    \ 'Normal',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.white.bright,
  \ ])

  call s:Highlight([
    \ 'ColorColumn',
    \ 'ctermbg=' . s:ANSIColors.red.normal,
  \ ])

  call s:Highlight([
    \ 'Conceal',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'CursorColumn',
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'CursorLine',
    \ 'cterm=underline',
  \ ])

  call s:Highlight([
    \ 'Directory',
    \ 'ctermfg=' . s:ANSIColors.cyan.normal,
  \ ])

  call s:Highlight([
    \ 'DiffAdd',
    \ 'ctermfg=' . s:ANSIColors.green.normal,
    \ 'ctermbg=NONE',
  \ ])

  call s:Highlight([
    \ 'DiffChange',
    \ 'ctermfg=' . s:ANSIColors.yellow.normal,
    \ 'ctermbg=NONE',
  \ ])

  call s:Highlight([
    \ 'DiffDelete',
    \ 'ctermfg=' . s:ANSIColors.red.normal,
    \ 'ctermbg=NONE',
  \ ])

  call s:Highlight([
    \ 'DiffText',
    \ 'ctermfg=' . s:ANSIColors.blue.normal,
    \ 'ctermbg=NONE',
    \ 'cterm=bold',
  \ ])

  call s:Highlight([
    \ 'link',
    \ 'EndOfBuffer',
    \ 'NonText',
  \ ])

  call s:Highlight([
    \ 'ErrorMsg',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.red.normal,
  \ ])

  call s:Highlight([
    \ 'VertSplit',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.normal,
  \ ])

  call s:Highlight([
    \ 'Folded',
    \ 'ctermfg=' . s:ANSIColors.cyan.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'FoldColumn',
    \ 'ctermfg=' . s:ANSIColors.cyan.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'SignColumn',
    \ 'ctermfg=' . s:ANSIColors.cyan.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'IncSearch',
    \ 'cterm=reverse',
  \ ])

  call s:Highlight([
    \ 'LineNr',
    \ 'ctermfg=' . s:ANSIColors.yellow.bright,
  \ ])

  call s:Highlight([
    \ 'CursorLineNr',
    \ 'cterm=underline',
    \ 'ctermfg=' . s:ANSIColors.yellow.normal,
  \ ])

  call s:Highlight([
    \ 'MatchParen',
    \ 'ctermfg=' . s:ANSIColors.cyan.normal,
  \ ])

  call s:Highlight([
    \ 'ModeMsg',
    \ 'cterm=bold',
  \ ])

  call s:Highlight([
    \ 'MoreMsg',
    \ 'ctermfg=' . s:ANSIColors.green.bright,
  \ ])

  call s:Highlight([
    \ 'NonText',
    \ 'ctermfg=' . s:ANSIColors.blue.bright,
  \ ])

  call s:Highlight([
    \ 'Pmenu',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.white.normal,
  \ ])

  call s:Highlight([
    \ 'PmenuSel',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'PmenuSbar',
    \ 'ctermbg=' . s:ANSIColors.white.normal,
  \ ])

  call s:Highlight([
    \ 'PmenuThumb',
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'Question',
    \ 'ctermfg=' . s:ANSIColors.green.normal,
  \ ])

  call s:Highlight([
    \ 'link',
    \ 'QuickFixLine',
    \ 'Search',
  \ ])

  call s:Highlight([
    \ 'Search',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.yellow.bright,
  \ ])

  call s:Highlight([
    \ 'SpecialKey',
    \ 'ctermfg=' . s:ANSIColors.blue.bright,
  \ ])

  call s:Highlight([
    \ 'SpellBad',
    \ 'ctermbg=' . s:ANSIColors.red.bright,
  \ ])

  call s:Highlight([
    \ 'SpellCap',
    \ 'ctermbg=' . s:ANSIColors.blue.bright,
  \ ])

  call s:Highlight([
    \ 'SpellLocal',
    \ 'ctermbg=' . s:ANSIColors.cyan.bright,
  \ ])

  call s:Highlight([
    \ 'SpellRare',
    \ 'ctermbg=' . s:ANSIColors.magenta.bright,
  \ ])

  call s:Highlight([
    \ 'StatusLine',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.green.normal,
  \ ])

  call s:Highlight([
    \ 'StatusLineNC',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'StatusLineTerm',
    \ 'cterm=bold',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.green.normal,
  \ ])

  call s:Highlight([
    \ 'StatusLineTermNC',
    \ 'cterm=bold',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'TabLine',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'TabLineFill',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'TabLineSel',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.green.normal,
  \ ])

  call s:Highlight([
    \ 'Title',
    \ 'ctermfg=' . s:ANSIColors.magenta.bright,
  \ ])

  call s:Highlight([
    \ 'Visual',
    \ 'ctermbg=' . s:ANSIColors.white.normal,
  \ ])

  call s:Highlight([
    \ 'VisualNOS',
    \ 'cterm=bold,underline',
  \ ])

  call s:Highlight([
    \ 'WarningMsg',
    \ 'ctermfg=' . s:ANSIColors.red.normal,
  \ ])

  call s:Highlight([
    \ 'WildMenu',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.yellow.bright,
  \ ])

  " }}}
else
  " Dark colors {{{

  " Set colors for Normal first, after that fg and bg color will be available
  " Note:
  "     :h E419
  "     :h E420
  call s:Highlight([
    \ 'Normal',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.normal,
  \ ])

  call s:Highlight([
    \ 'ColorColumn',
    \ 'ctermbg=' . s:ANSIColors.red.normal,
  \ ])

  call s:Highlight([
    \ 'Conceal',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'CursorColumn',
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'CursorLine',
    \ 'cterm=underline',
  \ ])

  call s:Highlight([
    \ 'Directory',
    \ 'ctermfg=' . s:ANSIColors.cyan.normal,
  \ ])

  call s:Highlight([
    \ 'DiffAdd',
    \ 'ctermfg=' . s:ANSIColors.green.normal,
    \ 'ctermbg=NONE',
  \ ])

  call s:Highlight([
    \ 'DiffChange',
    \ 'ctermfg=' . s:ANSIColors.yellow.normal,
    \ 'ctermbg=NONE',
  \ ])

  call s:Highlight([
    \ 'DiffDelete',
    \ 'ctermfg=' . s:ANSIColors.red.normal,
    \ 'ctermbg=NONE',
  \ ])

  call s:Highlight([
    \ 'DiffText',
    \ 'ctermfg=' . s:ANSIColors.blue.normal,
    \ 'ctermbg=NONE',
    \ 'cterm=bold',
  \ ])

  call s:Highlight([
    \ 'link',
    \ 'EndOfBuffer',
    \ 'NonText',
  \ ])

  call s:Highlight([
    \ 'ErrorMsg',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.red.normal,
  \ ])

  call s:Highlight([
    \ 'VertSplit',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.normal,
  \ ])

  call s:Highlight([
    \ 'Folded',
    \ 'ctermfg=' . s:ANSIColors.cyan.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'FoldColumn',
    \ 'ctermfg=' . s:ANSIColors.cyan.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'SignColumn',
    \ 'ctermfg=' . s:ANSIColors.cyan.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'IncSearch',
    \ 'cterm=reverse',
  \ ])

  call s:Highlight([
    \ 'LineNr',
    \ 'ctermfg=' . s:ANSIColors.yellow.bright,
  \ ])

  call s:Highlight([
    \ 'CursorLineNr',
    \ 'cterm=underline',
    \ 'ctermfg=' . s:ANSIColors.yellow.normal,
  \ ])

  call s:Highlight([
    \ 'MatchParen',
    \ 'ctermfg=' . s:ANSIColors.cyan.normal,
  \ ])

  call s:Highlight([
    \ 'ModeMsg',
    \ 'cterm=bold',
  \ ])

  call s:Highlight([
    \ 'MoreMsg',
    \ 'ctermfg=' . s:ANSIColors.green.bright,
  \ ])

  call s:Highlight([
    \ 'NonText',
    \ 'ctermfg=' . s:ANSIColors.blue.bright,
  \ ])

  call s:Highlight([
    \ 'Pmenu',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.white.normal,
  \ ])

  call s:Highlight([
    \ 'PmenuSel',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'PmenuSbar',
    \ 'ctermbg=' . s:ANSIColors.white.normal,
  \ ])

  call s:Highlight([
    \ 'PmenuThumb',
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'Question',
    \ 'ctermfg=' . s:ANSIColors.green.normal,
  \ ])

  call s:Highlight([
    \ 'link',
    \ 'QuickFixLine',
    \ 'Search',
  \ ])

  call s:Highlight([
    \ 'Search',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.yellow.bright,
  \ ])

  call s:Highlight([
    \ 'SpecialKey',
    \ 'ctermfg=' . s:ANSIColors.blue.bright,
  \ ])

  call s:Highlight([
    \ 'SpellBad',
    \ 'ctermbg=' . s:ANSIColors.red.bright,
  \ ])

  call s:Highlight([
    \ 'SpellCap',
    \ 'ctermbg=' . s:ANSIColors.blue.bright,
  \ ])

  call s:Highlight([
    \ 'SpellLocal',
    \ 'ctermbg=' . s:ANSIColors.cyan.bright,
  \ ])

  call s:Highlight([
    \ 'SpellRare',
    \ 'ctermbg=' . s:ANSIColors.magenta.bright,
  \ ])

  call s:Highlight([
    \ 'StatusLine',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.green.normal,
  \ ])

  call s:Highlight([
    \ 'StatusLineNC',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'StatusLineTerm',
    \ 'cterm=bold',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.green.normal,
  \ ])

  call s:Highlight([
    \ 'StatusLineTermNC',
    \ 'cterm=bold',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'TabLine',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'TabLineFill',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.white.normal,
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'TabLineSel',
    \ 'cterm=NONE',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.green.normal,
  \ ])

  call s:Highlight([
    \ 'Title',
    \ 'ctermfg=' . s:ANSIColors.magenta.bright,
  \ ])

  call s:Highlight([
    \ 'Visual',
    \ 'ctermbg=' . s:ANSIColors.black.bright,
  \ ])

  call s:Highlight([
    \ 'VisualNOS',
    \ 'cterm=bold,underline',
  \ ])

  call s:Highlight([
    \ 'WarningMsg',
    \ 'ctermfg=' . s:ANSIColors.red.normal,
  \ ])

  call s:Highlight([
    \ 'WildMenu',
    \ 'ctermfg=' . s:ANSIColors.black.normal,
    \ 'ctermbg=' . s:ANSIColors.yellow.bright,
  \ ])

  " }}}
endif
