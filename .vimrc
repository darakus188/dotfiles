" Matthew Bunt ~/.vimrc
"
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set number relativenumber
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
" Fuzzy finding
Plug 'junegunn/fzf.vim'
" LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set bg=dark
syntax on
let g:codedark_conservative = 1
colorscheme codedark
