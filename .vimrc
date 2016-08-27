call pathogen#infect() 
set shell=/bin/bash
set number
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab

syntax on
colorscheme sift

" Convenient split pane movement
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>

" File browser package
map <C-n> :NERDTreeToggle<CR>

" GOLANG settings
filetype plugin on  
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  
