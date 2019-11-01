" Vim custom colors
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2019 Nov 01

" dark or light
set background=dark
colorscheme brogrammer.16

" colorscheme OceanicNext
" let g:oceanic_next_terminal_bold=1
" let g:oceanic_next_terminal_italic=1
" let g:airline_theme='oceanicnext'

" colorscheme github
" let g:github_colors_block_diffmark=1

" Vim uses background color erase even if the terminfo file does not contain the
" bce capability. This is a bug in vim. This let needs for Kitty terminal
" emulator.
" https://sw.kovidgoyal.net/kitty/faq.html#using-a-color-theme-with-a-background-color-does-not-work-well-in-vim
" https://sw.kovidgoyal.net/kitty/protocol-extensions.html#ext-styles
"
" Since Thu Oct 10 20:07:37 MSK 2019 works fine in kitty?
let &t_ut=''
