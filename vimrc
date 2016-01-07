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
endif

"Backups are for quiche eaters
set noswapfile 

"Make gVim look a bit more like traditional vim
set guioptions-=l
set guioptions-=r
set guioptions-=b
set guioptions-=m
set guioptions-=T

hi VimwikiHeader1 guifg=#E77471 gui=bold
hi VimwikiHeader2 guifg=#B2C248 gui=bold
hi VimwikiHeader3 guifg=#6698FF gui=bold
hi VimwikiHeader4 guifg=#7D0552 gui=bold
hi VimwikiHeader5 guifg=#00FFFF
hi VimwikiHeader6 guifg=#FFFF00

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

"Add tab numbers to tabs for easy switching
set showtabline=2 " always show tabs in gvim, but not vim
" set up tab labels with tab number, buffer name, number of windows
function! GuiTabLabel()
  let label = ''
  let bufnrlist = tabpagebuflist(v:lnum)
  " Add '+' if one of the buffers in the tab page is modified
  for bufnr in bufnrlist
    if getbufvar(bufnr, "&modified")
      let label = '+'
      break
    endif
  endfor
  " Append the tab number
  let label .= v:lnum.': '
  " Append the buffer name
  let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
  if name == ''
    " give a name to no-name documents
    if &buftype=='quickfix'
      let name = '[Quickfix List]'
    else
      let name = '[No Name]'
    endif
  else
    " get only the file name
    let name = fnamemodify(name,":t")
  endif
  let label .= name
  return label 
endfunction
set guitablabel=%{GuiTabLabel()}
