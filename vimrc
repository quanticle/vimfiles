set t_Co=256
set nocompatible
syntax on
execute pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()
filetype plugin on
colorscheme molokai
set wildmenu
set wildmode=longest,list
set laststatus=2
filetype indent off
set backspace=2
set ruler
set number
if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
else 
  set term=xterm
  set t_Co=256
  let &t_AB="\e[48;5;%dm"
  let &t_AF="\e[38;5;%dm"
endif

"Backups are for quiche eaters
set noswapfile 

"Make gVim look a bit more like traditional vim
set guioptions-=l
set guioptions-=r
set guioptions-=b
set guioptions-=m
set guioptions-=T

"No bells
set visualbell
set t_vb=""

"I don't understand why gVim overrides the bell settings...
autocmd GUIEnter * set vb t_vb=

"Disable link shortening in vimwiki
let g:vimwiki_url_maxsave = 0

"Disable the mouse
set mouse-=a

autocmd BufEnter * :syntax sync fromstart
let g:sql_type_default = "sqlserver"

"Life is too short for strict case matching
set ignorecase

"Yank to the system clipboard by default
set clipboard=unnamed
