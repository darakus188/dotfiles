" Plugin section
call plug#begin('~/.vim/plugged')
" Fuzzy finding
Plug 'junegunn/fzf.vim'
source $HOME/.vim/plug-config/fzf.vim
Plug 'airblade/vim-rooter'
" LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source $HOME/.vim/plug-config/coc.vim
" Rust
Plug 'rust-lang/rust.vim'
" Colors
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'reedes/vim-colors-pencil'
Plug 'tomasiser/vim-code-dark'
Plug 'KeitaNakamura/neodark.vim'
call plug#end()

