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
set clipboard=unnamedplus
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
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)
set shortmess=atl
set whichwrap=b,s,<,>,h,l
set fileformats=unix,dos,mac
"conceal preview in pop window
set completeopt=longest,menu
set mouse=a
" disable autoload_cscope menu & macro
let g:autocscope_menus=1
" auto-indent when paste from third program
"set paste
"auto source vim config file, when the file has changed
autocmd! bufwritepost .vimrc source ~/.vimrc
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White 

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
"taglist configure and shortcut
map LL :TlistToggle<cr>
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1
colors desert
hi CursorLine term=bold cterm=bold gui=bold
autocmd VimLeave * call system("xsel -ib", getreg('+'))
