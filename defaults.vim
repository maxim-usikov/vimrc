" Vim defaults
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2019 Nov 01

" Skip defaults.
" let skip_defaults_vim=1

" Do not skip defaults.
unlet! skip_defaults_vim

if !exists('skip_defaults_vim')
    source $VIMRUNTIME/defaults.vim
endif
