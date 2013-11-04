execute pathogen#infect()

" Syntax highlighting options
syntax on
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

" Change tab default to 4 spaces
set tabstop=4
set expandtab
set shiftwidth=4

" Set auto indenting to on.
set autoindent

" Turn wrap off
set nowrap

" Open NERDTree automatically when vim starts if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
