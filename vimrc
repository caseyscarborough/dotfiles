execute pathogen#infect()

" Syntax highlighting options
syntax on
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme codeschool 

" Change tab default to 4 spaces
set expandtab
set tabstop=2
set shiftwidth=2
set guifont=Consolas:h14

" Set auto indenting to on.
set autoindent

" Turn wrap off
set nowrap

" Open NERDTree automatically when vim starts if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Allow modifying
set modifiable
