" Matthew Bunt ~/.vimrc
"
syntax on
colorscheme elflord
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
" set number
set showcmd
" set backspace=
set mouse=a
filetype plugin indent on

" Markdown settings
autocmd FileType markdown setlocal wrap
autocmd FileType markdown setlocal linebreak
autocmd FileType markdown setlocal spell
autocmd FileType markdown setlocal tw=0
autocmd FileType markdown setlocal wrapmargin=0

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

" Ripgrep for vim search
if executable('rg')
    set grepprg=rg\ --no-heading\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif

" System clipboard integration
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>c :w !xsel -ib<cr><cr>

" Status Bar
hi statusline ctermfg=8 ctermbg=15

" Plugin section
call plug#begin('~/.vim/plugged')
" Asyncronous Linter
Plug 'w0rp/ale'
" Visualize Yanks
Plug 'machakann/vim-highlightedyank'
" Auto CD to project root
Plug 'airblade/vim-rooter'
" Fuzzy finding
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
" LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Rust
Plug 'rust-lang/rust.vim'
call plug#end()

" ALE Linter
let g:ale_linters = {
    \ 'rust': ['rls'],
    \ 'Markdown': ['proselint']
    \ }

" Rust
let g:rustfmt_autosave = 1
let g:ale_rust_rls_config = {
    \ 'rust': {
        \ 'clippy_preference': 'on'
    \ }
    \ }
