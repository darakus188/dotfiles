set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set number relativenumber
set showcmd
" set backspace=
set mouse=a
filetype plugin indent on
let mapleader = ","

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set number relativenumber
set showcmd
" set backspace=
set mouse=a

" safety section
set undodir=~/.vim/undo/
set undofile
set swapfile
set directory=~/.vim/swap/
set writebackup
set nobackup
set backupcopy=auto

" <TAB> completion for popup menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" System clipboard integration
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>c :w !xsel -ib<cr><cr>

" Status Bar
hi statusline ctermfg=8 ctermbg=15

