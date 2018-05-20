set nocompatible
filetype off
set number
syntax on

hi Search cterm=NONE ctermfg=white ctermbg=lightblue

set directory^=$HOME/.vim/tmp//

set backspace=indent,eol,start

:set mouse=a

noremap <Leader>s :update<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

:set autochdir

:set cursorline
:hi CursorLine cterm=NONE ctermbg=225 

:set cursorcolumn
:hi CursorColumn cterm=NONE ctermbg=225 ctermfg=black guibg=darkred guifg=white

set expandtab
set shiftwidth=2
set softtabstop=2

set clipboard=unnamed

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'

call plug#end()

map <leader>q :NERDTreeToggle<CR>

"Pressing Enter toggles highlight all occurrences of a word on and off.

let g:highlighting = 0
function! Highlighting()
  if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
    let g:highlighting = 0
    return ":silent nohlsearch\<CR>"
  endif
  let @/ = '\<'.expand('<cword>').'\>'
  let g:highlighting = 1
  return ":silent set hlsearch\<CR>"
endfunction
nnoremap <silent> <expr> <CR> Highlighting()
