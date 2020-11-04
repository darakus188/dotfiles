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

" Jump to last edit location on open
" Only do this part when Vim was compiled with the +eval feature.
if 1

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  " Revert with ":filetype off".
  filetype plugin indent on

  " Put these in an autocmd group, so that you can revert them with:
  " ":augroup vimStartup | au! | augroup END"
  augroup vimStartup
    au!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid, when inside an event handler
    " (happens when dropping a file on gvim) and for a commit message (it's
    " likely a different one than last time).
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif

  augroup END

endif

" <TAB> completion for popup menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" System clipboard integration
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>c :w !xsel -ib<cr><cr>

" Status Bar
hi statusline ctermfg=8 ctermbg=15

