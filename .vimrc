colorscheme murphy  " awesome colorscheme

syntax enable       " enable syntax processing

" Listchars Config
set listchars=eol:$,space:~,tab:>-,trail:~,extends:>,precedes:<

""""""""" Space and Tabs
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " when indenting with '>', use 4 spaces width
set expandtab       " tabs are spaces

""""""""" UI Config
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype plugin indent on
set wildmenu            " visual autocomplete for command menu

""""""""" Search Config
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

""""""""" Movement Config
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" Jump 5 lines up/down
nnoremap J 5j
nnoremap K 5k

" Jump 5 symbols left/right
nnoremap H 5h
nnoremap L 5l

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

"""""""" NERDTree Config
map <C-n> :NERDTreeToggle<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

execute pathogen#infect()

