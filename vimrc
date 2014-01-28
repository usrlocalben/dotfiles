let loaded_matchparen = 1
set nocompatible
set bs=2
set ai
set nowrap
set history=50
set ruler
set incsearch
set ignorecase
set gdefault
set cmdheight=1
set laststatus=2
set cinoptions=(0
set ts=8
"set expandtab
set joinspaces
set showmatch
set tildeop
set nowrap
set visualbell t_vb=
syntax on
map ; $
map - 1G
map \ $G
map <C-k> :bn<Return>
map <C-j> :bp<Return>
map <Esc>OS <C-w>-
map <Esc>Ol <C-w>+
map <F5> :s.^.//. <CR> :noh <CR>
map <F6> :s.^//.. <CR> :noh <CR>

" restore cursor position if it is found in viminfo from
" https://wiki.archlinux.org/index.php/Vim
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" bash/zsh style completion from
" http://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names
set wildmode=longest,list,full
set wildmenu

" completion for less.js scripts
" source ~/bin/less.vim

" enable 256 colors terminal & colorscheme
set t_Co=256
"source ~/bin/transparent.vim
"colorscheme murphy
colorscheme xoria256
"colorscheme inkpot

" paste in place
noremap p p`[
noremap P P`[

" full row cursorline highlighter
"hi CursorLine cterm=NONE ctermbg=darkgrey
"set cursorline

if has("gui_running")
  if has("gui_win32")
    set guifont=Dina:h9:cANSI
    set guioptions-=l
    set guioptions-=r
    set guioptions-=b
    set guioptions-=m
    set guioptions-=T
  endif
endif
    
