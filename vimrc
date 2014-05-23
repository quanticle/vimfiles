set t_Co=256
set nocompatible
syntax on
execute pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()
filetype plugin on
colorscheme desert256
set wildmenu
set wildmode=longest,list
set laststatus=2
filetype indent off
set backspace=2
set ruler

if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

"Backups are for quiche eaters
set noswapfile 

