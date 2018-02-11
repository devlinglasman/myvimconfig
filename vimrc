set nocompatible
filetype off
set number
syntax on

ino jj <esc>
cno jj <c-c>
vno v <esc> 

noremap <Leader>s :update<CR>

:set cursorline
:hi CursorLine cterm=NONE ctermbg=225 ctermfg=black guibg=darkred guifg=white

:set cursorcolumn
:hi CursorColumn cterm=NONE ctermbg=225 ctermfg=black guibg=darkred guifg=    white

let mapleader=","

set expandtab
set shiftwidth=2
set softtabstop=2

set clipboard=unnamedplus

call plug#begin()

        Plug 'scrooloose/nerdtree'
        Plug 'valloric/youcompleteme'

call plug#end()
