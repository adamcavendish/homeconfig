""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

" file encodings
set fileencodings=utf-8,cp936,gb18030,gbk,gb2312,ucs-bom,latin-1
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set fileencoding=utf-8
" Use Unix as the standard file type
set ffs=unix,dos,mac
" set ff=unix

" Enable filetype plugins
filetype plugin on
filetype indent on

set nocompatible		" not compatible with vi

" 缩排
set autoindent			" auto indent
set nowrap				" Wrap lines
set shiftwidth=4		" every tab is 4 char size
set pastetoggle=<F9>	" toggle paste mode(set paste/set nopaste)

set smartindent			" 設定 smartindent
set confirm				" 操作過程有衝突時，以明確的文字來詢問
set history=100			" 保留 100 個使用過的指令
set cursorline			" 显示目前的光标位置
set nu					" 自动编号

" Folding
set foldenable
set foldmethod=syntax	" enable code folding

" Status line
set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

" Turn on the WiLd menu
set wildmenu

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" increment search
set incsearch
" ignore case when searching
set ic

" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F8 to toggle taglist window on the left
nnoremap <silent> <F8> :TlistToggle<CR><CR>
" :Tlist	調用Taglist
let Tlist_Show_One_File=0			" 只顯示當前文件的tags
let Tlist_Exit_OnlyWindow=1			" 如果Taglist窗口是最後一個窗口則退出Vim
let Tlist_Use_Right_Window=0		" 在右側窗口中顯示
let Tlist_File_Fold_Auto_Close=1	" 自動摺疊

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme desert
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions+=e
    set t_Co=256
	set guitablabel=%M\ %t
endif

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Smart way to move between tabs
map <C-H> :tabp<cr>
map <C-L> :tabn<cr>
map <C-K> :tabfirst<cr>
map <C-J> :tablast<cr>
map <C-N> :tabnew<cr>

imap <C-H> <ESC>:tabp<cr>
imap <C-L> <ESC>:tabn<cr>
imap <C-K> <ESC>:tabfirst<cr>
imap <C-J> <ESC>:tablast<cr>
imap <C-N> <ESC>:tabnew<cr>

try
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif
" Remember info about open buffers on close
set viminfo^=%

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clang_complete_copen = 1
let g:clang_complete_auto = 1
let g:clang_use_library = 1
let g:clang_debug = 1
let g:clang_library_path = '/opt/clang-3.4/lib/'
let g:clang_user_options='|| exit 0'
let b:clang_user_options = '-std=c++11'
let g:clang_close_preview=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
" C++11
au BufNewFile,BufRead *.cc,*.cp,*.cxx,*.cpp,*.CPP,*.c++,*.C set syntax=cpp11
au BufNewFile,BufRead *.hh,*.H,*.hp,*.hxx,*.hpp,*.HPP,*.h++,*.tcc set syntax=cpp11
" Assembly
au BufNewFile,BufRead *.s,*.S set syntax=gas

