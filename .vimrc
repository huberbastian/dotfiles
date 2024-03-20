imap ^? ^H
set encoding=utf-8
set nu
set scrolloff=3
set autoindent
set shiftwidth=0
set tabstop=4
set expandtab

set background=dark
let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_dark = 'medium'
autocmd vimenter * ++nested colorscheme gruvbox

" Vim Plug, Plugins at ~/.vim/plugged
call plug#begin()

Plug 'morhetz/gruvbox'

call plug#end()
