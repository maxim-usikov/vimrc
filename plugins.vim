" Vim plugins
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2019 Nov 01

" Note: Better "%" matcher
packadd! matchit

call plug#begin('~/.vim/plugged')
" Note: since v1.0.0-beta - external editorconfig core library is NOT required
"   https://github.com/editorconfig/editorconfig-vim/releases/tag/v1.0.0-beta
"   * 5df91ec Add back in the option of using an external core (#128)
Plug 'editorconfig/editorconfig-vim'

" Note: fzf installed with Homebrew
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Note: Syntax highlight
Plug 'sheerun/vim-polyglot'

" Note: Asynchronous Lint Engine
Plug 'dense-analysis/ale'

" Note: Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Note: Table mode
Plug 'dhruvasagar/vim-table-mode'

" Note: Already added by `sheerun/vim-polyglot` as plugin
" Plug 'chrisbra/csv.vim'

" Note: works only if set t_Co=256
" Plug 'skammer/vim-css-color'
" Plug 'ap/vim-css-color'

" Corols / Themes
" Note: Dark
" Plug 'mhartington/oceanic-next'
" Note: Light, with colors for fzf, diff
" Plug 'cormacrelf/vim-colors-github'

" Note: newest
" Plug 'junegunn/limelight.vim' " hmmm... frustrating
call plug#end()
