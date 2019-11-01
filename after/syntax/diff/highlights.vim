" Diff syntax highlights
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2019 Nov 01

" echo "after/syntax/diff/highlights.vim"

function! s:Highlight(args)
  execute 'highlight ' . join(a:args, ' ')
endfunction

" Note:
"     looks like git diff
call s:Highlight([
\ 'link',
\ 'diffOldFile',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffNewFile',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffIndexLine',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffFile',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffOnly',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffIdentical',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffDiffer',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffBDiffer',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffIsA',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffNoEOL',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffCommon',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffRemoved',
\ 'DiffDelete',
\ ])

call s:Highlight([
\ 'link',
\ 'diffChanged',
\ 'DiffChange',
\ ])

call s:Highlight([
\ 'link',
\ 'diffAdded',
\ 'DiffAdd',
\ ])

call s:Highlight([
\ 'link',
\ 'diffLine',
\ 'Comment',
\ ])

call s:Highlight([
\ 'link',
\ 'diffSubname',
\ 'Normal',
\ ])

call s:Highlight([
\ 'link',
\ 'diffComment',
\ 'Normal',
\ ])

" hi def link diffOldFile     diffFile
" hi def link diffNewFile     diffFile
" hi def link diffIndexLine   PreProc
" hi def link diffFile        Type
" hi def link diffOnly        Constant
" hi def link diffIdentical   Constant
" hi def link diffDiffer      Constant
" hi def link diffBDiffer     Constant
" hi def link diffIsA         Constant
" hi def link diffNoEOL       Constant
" hi def link diffCommon      Constant
" hi def link diffRemoved     Special
" hi def link diffChanged     PreProc
" hi def link diffAdded       Identifier
" hi def link diffLine        Statement
" hi def link diffSubname     PreProc
" hi def link diffComment     Comment
