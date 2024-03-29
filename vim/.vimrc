syntax on
set number
set cursorline
set ruler
set showcmd
" for linux kernel
set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
" for Windows in VS IDE
"set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
" for Java
"set softtabstop=4 shiftwidth=4 expandtab
filetype plugin indent on
set ignorecase smartcase
set incsearch
"support 256 colors,if you use colorscheme, you'd better set this 
set t_Co=256 
set hlsearch
set noerrorbells
set novisualbell
" using system clipboard as default
if has("macunix")
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif
set showmatch
set matchtime=2
set magic
set backspace=indent,eol,start
set smartindent
set nocompatible
set cmdheight=1
set foldmethod=syntax
set laststatus=2
"custom the status bar in vim
set statusline=\ %<%f[%1*%M%*%n%R%H]\ -\ %B,%o%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)
set shortmess=atl
set whichwrap=b,s,<,>,h,l
set fileformats=unix,dos,mac
"conceal preview in pop window
set completeopt=longest,menu
"set mouse=a
" disable autoload_cscope menu & macro
let g:autocscope_menus=1
" auto-indent when paste from third program
"set paste
"auto source vim config file, when the file has changed
autocmd! bufwritepost .vimrc source ~/.vimrc
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White 

" for pathogen plugin
execute pathogen#infect()

"GNU Coding Standards
"set cindent
"set cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
"set textwidth=79
"set fo-=ro fo+=cql
"END

"move in visual line
nnoremap j gj
nnoremap k gk

"replay the macro in q register
nnoremap <C-j> @q

"keep visual block after indent
vnoremap < <gv
vnoremap > >gv

" fold code
nnoremap <space> za
"multi-window shortcut
nnoremap wh <c-w>h
nnoremap wl <c-w>l
nnoremap wj <c-w>j
nnoremap wk <c-w>k
" nerdtree plugin
map LL :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" tagbar plugin
map RR :TagbarToggle<CR>
" autoformat plugin
map II :Autoformat<CR>

colors desert
hi CursorLine term=bold cterm=bold gui=bold
" custom search highlight color in terminal
hi IncSearch cterm=bold ctermfg=white ctermbg=NONE
hi Search cterm=bold ctermfg=white ctermbg=NONE

" auto copy vim clipboard to system clipboard when exiting
autocmd VimLeave * call system("xsel -ib", getreg('+'))
