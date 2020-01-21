" Vim custom plugins ale
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2019 Nov 01

" set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_vue_vls_use_global = 1
let g:ale_javascript_eslint_suppress_eslintignore = 1
" let g:ale_command_wrapper = 'nice -n5 %*'
" Note: for nvim only!
" let g:ale_virtualtext_cursor = 1

let g:ale_linter_aliases = {
\     'vue': [
\         'vue',
\         'html',
\         'css',
\         'javascript',
\    ],
\}

let g:ale_linters = {
\   'vue': [
\       'eslint',
\       'vls',
\       'stylelint',
\   ],
\   'html': [
\       'stylelint',
\   ],
\   'css': [
\       'stylelint',
\   ],
\   'scss': [
\       'stylelint',
\   ],
\}

let g:ale_fixers = {
\   'javascript': [
\       'prettier',
\       'eslint',
\   ],
\   'vue': [
\       'prettier',
\       'eslint',
\       'stylelint',
\   ],
\   'json': [
\       'prettier',
\   ],
\   'html': [
\       'prettier',
\       'stylelint',
\   ],
\   'css': [
\       'prettier',
\       'stylelint',
\   ],
\   'scss': [
\       'prettier',
\       'stylelint',
\   ],
\}
