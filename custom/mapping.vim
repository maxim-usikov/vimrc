" Vim custom mapping
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2019 Nov 01

" Note:
"   Setting this option to a valid keymap name has the side effect of"
"   setting "iminsert" to one, so that the keymap becomes effective.
"   "imsearch" is also set to one, unless it was -1
set keymap=russian-jcukenmac

" Note:
"   Should be after "keymap". See "keymap" note.
set iminsert=0

" Note:
"   Should be after "keymap". See "keymap" note.
set imsearch=-1

set langmap+=фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set langmap+=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ


" Edit $MYVIMRC in new tab.
nmap <Leader>v :tabedit $MYVIMRC<CR>

" Just refresh search, diff and syntax.
nnoremap <leader>l :nohlsearch<CR>:diffupdate<CR>:syntax sync fromstart<CR><C-L>

" Tab navigation.
"
" [x] <C-W>
" [ ] <Leader> instead <C-W>
" [ ] http://vim.wikia.com/wiki/Alternative_tab_navigation
" [x] <C-W>gt, <C-W>gT added in patches:
"   * patch 8.1.0974: cannot switch from terminal window to previous tabpage
"   * patch 8.1.0972: cannot switch from terminal window to next tabpage
" nnoremap <C-W>gt <C-W>:tabnext<CR>
" nnoremap <C-W>gT <C-W>:tabprevious<CR>
" tnoremap <C-W>gt <C-W>:tabnext<CR>
" tnoremap <C-W>gT <C-W>:tabprevious<CR>

" TODO: Tips https://github.com/mhinz/vim-galore#tips-1
