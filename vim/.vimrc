syntax on
set number
set cursorline
set ruler
set showcmd
set shiftwidth=4
set softtabstop=4
set tabstop=4
filetype plugin indent on
set ignorecase smartcase
set incsearch
"support 256 colors,if you use colorscheme, you'd better set this 
set t_Co=256 
set hlsearch
set noerrorbells
set novisualbell
set clipboard+=unnamedplus
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
"auto source vim config file, when the file has changed
autocmd! bufwritepost .vimrc source ~/.vimrc
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White 

"GNU Coding Standards
set cindent
set cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
set shiftwidth=2
set softtabstop=2
set textwidth=79
set fo-=ro fo+=cql
"END

nnoremap <space> za
"multi-window shortcut
map wh <c-w>h
map wl <c-w>l
map wj <c-w>j
map wk <c-w>k
"taglist configure and shortcut
map LL :TlistToggle<cr>
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1
colors desert
hi CursorLine term=bold cterm=bold gui=bold
