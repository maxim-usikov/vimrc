" Vim custom plugins gitgutter
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2020 Feb 17

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '_'
let g:gitgutter_sign_removed_first_line = '‾'
let g:gitgutter_sign_modified_removed = '~_'

" TODO: add colors match to own brogrammer.16 theme
" GitGutterAdd          " an added line
" GitGutterChange       " a changed line
" GitGutterDelete       " at least one removed line
" GitGutterChangeDelete " a changed line followed by at least one removed line
"
" GitGutterAddLine          " default: links to DiffAdd
" GitGutterChangeLine       " default: links to DiffChange
" GitGutterDeleteLine       " default: links to DiffDelete
" GitGutterChangeDeleteLine " default: links to GitGutterChangeLineDefault
"
" GitGutterAddLineNr          " default: links to CursorLineNr
" GitGutterChangeLineNr       " default: links to CursorLineNr
" GitGutterDeleteLineNr       " default: links to CursorLineNr
" GitGutterChangeDeleteLineNr " default: links to CursorLineNr
