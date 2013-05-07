set nocompatible
syntax off
execute pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()
filetype plugin indent on
colorscheme desert256
set t_Co=256
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
