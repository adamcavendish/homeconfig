""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle
	" :BundleList			- list configured bundles
	" :BundleInstall(!)		- install (update) bundles
	" :BundleSearch(!) foo	- search (or refresh cache first) for foo
	" :BundleClean(!)		- confirm (or auto-approve) removal of unused bundles
	" see :h vundle for more detailed info
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off			" Required!
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()
	" Invalid arguments for function vundle#config#bundle
Bundle 'gmarik/vundle'	
filetype on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle managed bundles ----vim scripts on `vim.org`----
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'taglist.vim'
Bundle 'grep.vim'
Bundle 'comments.vim'
" Bundle 'bash-support.vim'
Bundle 'glsl.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle managed bundles ----git repo----
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/MatchTagAlways'
Bundle 'vim-scripts/AutoClose'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Mizuchi/STL-Syntax'
Bundle 'Shirk/vim-gas'
Bundle 'adamcavendish/cpp_syntax_vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Main Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" file encodings and file stuffs
set fileencodings=utf-8,cp936,gb18030,gbk,gb2312,ucs-bom,latin-1
set encoding=utf8		" Set utf8 as standard encoding and en_US as the standard language
set fileencoding=utf-8
set ffs=unix,dos,mac
" set ff=unix			" Use Unix as the standard file type
filetype plugin on
filetype indent on

"" Miscellaneous
set nocompatible		" not compatible with vi
set number				" show side line number
set cursorline			" show current cursor line
set confirm
set history=100

"" indention
set autoindent			" auto indent
set nowrap				" Wrap lines
set shiftwidth=4		" every tab is 4 char size
set smartindent
	" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab            " Be smart when using tabs
set expandtab			" convert tab into spaces

"" Folding
set foldenable
set foldmethod=syntax	" enable code folding

"" Status line
set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

"" Turn on the WiLd menu
set wildmenu

"" Always show current position
set ruler

"" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase		" Ignore case when searching
set smartcase		" When searching try to be smart about cases
set hlsearch		" Highlight search results
set incsearch		" increment search
set ic				" ignore case when searching

set lazyredraw		" Don't redraw while executing macros (good performance config)
set magic			" For regular expressions turn magic on

set showmatch		" Show matching brackets when text indicator is over them
set mat=2			" How many tenths of a second to blink when matching brackets

set noerrorbells	" No annoying sound on errors
set novisualbell
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F8 to toggle taglist window on the left
nnoremap <silent> <F8> :TlistToggle<CR><CR>
" :Tlist
let Tlist_Show_One_File=0			" show only current file tags
let Tlist_Exit_OnlyWindow=1			" if taglist is the last window then exit vim
let Tlist_Use_Right_Window=0		" show on the right side
let Tlist_File_Fold_Auto_Close=1	" auto folding

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  " cnoreabbrev csa cs add
  " cnoreabbrev csf cs find
  " cnoreabbrev csk cs kill
  " cnoreabbrev csr cs reset
  " cnoreabbrev css cs show
  " cnoreabbrev csh cs help

  "command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
  command -nargs=0 Cscope cs add $VIMSRC/cscope.out $VIMSRC
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Theme, Colors and Fonts
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

	" Linebreak on 500 characters
set lbr
set tw=500

""""""""""""""""""""""""""""""
"" Smart way to move between tabs
""""""""""""""""""""""""""""""
map <C-H> :tabp<CR>
map <C-L> :tabn<CR>
map <C-K> :tabfirst<CR>
map <C-J> :tablast<CR>
map <C-N> :tabnew<CR>
map <C-W><C-H> :execute "tabmove" tabpagenr()-2<CR>
map <C-W><C-L> :execute "tabmove" tabpagenr()<CR>
map <C-W><C-K> :tabm 0<CR>
map <C-W><C-J> :tabm<CR>

imap <C-H> <ESC>:tabp<CR>
imap <C-L> <ESC>:tabn<CR>
imap <C-K> <ESC>:tabfirst<CR>
imap <C-J> <ESC>:tablast<CR>
imap <C-N> <ESC>:tabnew<CR>
imap <C-W><C-H> <ESC>:execute "tabmove" tabpagenr()-2<CR>
imap <C-W><C-L> <ESC>:execute "tabmove" tabpagenr()<CR>
imap <C-W><C-K> <ESC>:tabm 0<CR>
imap <C-W><C-J> <ESC>:tabm<CR>

""""""""""""""""""""""""""""""
"" Visual mode related
""""""""""""""""""""""""""""""
	" Visual mode pressing * or # searches for the current selection
	" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

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
"" Status line
""""""""""""""""""""""""""""""
	" Always show the status line
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F6> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open=1
let g:syntastic_cpp_include_dirs=['/usr/include/', '/usr/local/include/']
let g:syntastic_cpp_remove_include_errors=1
let g:syntastic_cpp_check_header=1
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_cpp_compiler_options='-std=c++11 -stdlib=libstdc++'
" set error or warning signs
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='W!'
" whether to show balloons
let g:syntastic_enable_balloons=1
let g:syntastic_always_populate_loc_list=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:loaded_youcompleteme = 0
if filereadable($VIMSRC.'/.ycm_extra_conf.py')
	let g:ycm_global_ycm_extra_conf='$VIMSRC/.ycm_extra_conf.py'
else
	let g:ycm_global_ycm_extra_conf='~/.vim/myconfig/.ycm_extra_conf.py'
endif
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_confirm_extra_conf=0
let g:ycm_key_invoke_completion='<C-Space>'
	" Go to the definition, C-o to get back
nnoremap <F9> :YcmCompleter GoToDefinitionElseDeclaration<CR>
	" Force a full, blocking compilation cycle
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" Enable syntax highlighting
syntax enable
	" C++11
au BufNewFile,BufRead *.cc,*.cp,*.cxx,*.cpp,*.CPP,*.c++,*.C set syntax=cppnow
au BufNewFile,BufRead *.hh,*.H,*.hp,*.hxx,*.hpp,*.HPP,*.h++,*.tcc set syntax=cppnow
	" Assembly
au BufNewFile,BufRead *.s,*.S set syntax=gas
    " GLSL
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl set syntax=glsl
    " Markdown
au BufNewFile,BufRead *.md,*.mkd set syntax=markdown

