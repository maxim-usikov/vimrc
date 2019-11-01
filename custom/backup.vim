" Vim custom backup
" Author:       Maxim Usikov <mu.usikov@gmail.com>
" Maintainer:   Maxim Usikov <mu.usikov@gmail.com>
" Last Change:  2019 Nov 01

set backup
set backupdir^=~/.vim/tmp/backup//,/tmp/vim/backup//
set backupext=.bak
set backupskip+=.git
