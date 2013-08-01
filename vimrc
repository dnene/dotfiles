set nocompatible                                " get rid of Vi compatibility mode. SET FIRST!
filetype off                                    " for pathogen
call pathogen#incubate()                        " initialise pathogen
call pathogen#helptags()                        " 
filetype on                                     " turn filetype on
filetype plugin indent on                       " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256                                    " enable 256-color mode.
syntax enable                                   " enable syntax highlighting (previously syntax on).
colorscheme desert                              " set colorscheme
set number                                      " show line numbers
set laststatus=2                                " last window always has a statusline
filetype indent on                              " activates indenting for files
set nohlsearch                                  " Don't continue to highlight searched phrases.
set incsearch                                   " But do highlight as you type your search.
set ignorecase                                  " Make searches case-insensitive.
set ruler                                       " Always show info along bottom.
set autoindent                                  " auto-indent
set tabstop=4                                   " tab spacing
set softtabstop=4                               " unify
set shiftwidth=4                                " indent/outdent by 4 columns
set shiftround                                  " always indent/outdent to the nearest tabstop
set expandtab                                   " use spaces instead of tabs
set smarttab                                    " use tabs at the start of a line, spaces elsewhere
set nowrap                                      " don't wrap text
set foldmethod=indent                           " should work for python. Will need to set it per filetype later
set foldlevel=99                                " unlimited fold depth

map <c-j> <c-w>j                                " map ctrl-j to window down
map <c-k> <c-w>k                                " map ctrl-k to window up
map <c-l> <c-w>l                                " map ctrl-l to window right
map <c-h> <c-w>h                                " map ctrl-h to window left

map <leader>td <Plug>TaskList                   " map to launch tasklist

map <leader>g :GundoToggle<CR>                  " toggle gundo window

let g:pyflakes_use_quickfix = 0                 " do not use the quickfix window

au FileType python set omnifunc=pythoncomplete#Complete  " configure supertab plugin
let g:SuperTabDefaultCompletionType = "context"          " make tab completion context sensitive
set completeopt=menuone,longest,preview                  " tab completion options

