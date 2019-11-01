" Vim custom complete
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2019 Nov 01

set completeopt+=menuone,longest,noselect,noinsert
set path+=src/*
set includeexpr=substitute(v:fname,'@','src','g')
set isfname+=@-@
set suffixesadd+=.js,.jsx,.es,.vue
set suffixes+=.orig
