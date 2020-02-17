" Vim plugins
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2020 Feb 17

" Note: some colors plugins / features works only if 'set t_Co=256'
" Note: 'chrisbra/csv.vim' already added by 'sheerun/vim-polyglot'
" Note: 'editorconfig/editorconfig-vim' since v1.0.0-beta - external
"   editorconfig core library is NOT required
"   https://github.com/editorconfig/editorconfig-vim/releases/tag/v1.0.0-beta
"   * 5df91ec Add back in the option of using an external core (#128)

" Note: Extended "%" matching
packadd! matchit

call plug#begin('~/.vim/plugged')
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
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" Note: Table mode
Plug 'dhruvasagar/vim-table-mode'
call plug#end()
