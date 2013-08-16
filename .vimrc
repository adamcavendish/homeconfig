" file encodings
set fileencodings=utf-8,cp936,gb18030,gbk,gb2312,ucs-bom,latin-1
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set fileencoding=utf-8
" Use Unix as the standard file type
set ffs=unix,dos,mac

" Enable filetype plugins
filetype plugin on
filetype indent on

set nocompatible		" VIM 不使用和 VI 相容的模式

" 缩排
set autoindent			" auto indent
set wrap				"Wrap lines
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

" Set to auto read when a file is changed from the outside
" set autoread

" 键绑定
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
" let mapleader = ","
" let g:mapleader = ","

" Fast saving
" nmap <leader>w :w!<cr>

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
" set wildignore=*.o,*~,*.pyc

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
" set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" 搜索
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" increment search
set incsearch
" 搜索忽略大小写
set ic

" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic

" 符号匹配
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
" Enable syntax highlighting
syntax enable
" C++11
au BufNewFile,BufRead *.cc,*.cp,*.cxx,*.cpp,*.CPP,*.c++,*.C set syntax=cpp11
au BufNewFile,BufRead *.hh,*.H,*.hp,*.hxx,*.hpp,*.HPP,*.h++,*.tcc set syntax=cpp11
" Assembly
au BufNewFile,BufRead *.s,*.S set syntax=gas

colorscheme desert
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions+=e
    set t_Co=256
	set guitablabel=%M\ %t
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
" set nobackup
" set nowb
" set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
" set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
set lbr
set tw=115

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
" map j gj
" map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" map <space> /
" map <c-space> ?

" Disable highlight when <leader><cr> is pressed
" map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l
" map <C-n> <C-W>n

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

" Close the current buffer
" map <leader>bd :Bclose<cr>

" Close all the buffers
" map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
" map <leader>tn :tabnew<cr>
" map <leader>to :tabonly<cr>
" map <leader>tc :tabclose<cr>
" map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
" map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
" map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
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

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
" map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
" nmap <M-j> mz:m+<cr>`z
" nmap <M-k> mz:m-2<cr>`z
" vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
" vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" if has("mac") || has("macunix")
"	nmap <D-j> <M-j>
"	nmap <D-k> <M-k>
"	vmap <D-j> <M-j>
"	vmap <D-k> <M-k>
" endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
" func! DeleteTrailingWS()
"	exe \"normal mz\"
"	%s/\s\+$//ge
"	exe \"normal `z\"
" endfunc
" autocmd BufWrite *.py :call DeleteTrailingWS()
" autocmd BufWrite *.coffee :call DeleteTrailingWS()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
" vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
" map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
" map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
" vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
" " map <leader>cc :botright cope<cr>
" map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
" map <leader>n :cn<cr>
" map <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
" map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
" map <leader>sa zg
" map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
" noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
" map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
" map <leader>pp :setlocal paste!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function! CmdLine(str)
"    exe \"menu Foo.Bar :\" . a:str
"    emenu Foo.Bar
"    unmenu Foo
" endfunction

" function! VisualSelection(direction) range
"    let l:saved_reg = @"
"    execute \"normal! vgvy\"

"    let l:pattern = escape(@", '\\/.*$^~[]')
"    let l:pattern = substitute(l:pattern, \"\n$\", \"\", \"\")

"    if a:direction == 'b'
"        execute \"normal ?\" . l:pattern . \"^M\"
"    elseif a:direction == 'gv'
"        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
"    elseif a:direction == 'replace'
"        call CmdLine("%s" . '/'. l:pattern . '/')
"    elseif a:direction == 'f'
"        execute \"normal /\" . l:pattern . \"^M\"
"    endif

"    let @/ = l:pattern
"    let @" = l:saved_reg
" endfunction


" Returns true if paste mode is enabled
" function! HasPaste()
"    if &paste
"        return 'PASTE MODE  '
"    en
"    return ''
" endfunction

" Don't close window, when deleting a buffer
" command! Bclose call <SID>BufcloseCloseIt()
" function! <SID>BufcloseCloseIt()
"    let l:currentBufNum = bufnr("%")
"    let l:alternateBufNum = bufnr("#")
" 
"    if buflisted(l:alternateBufNum)
"      buffer #
"    else
"      bnext
"    endif
" 
"    if bufnr("%") == l:currentBufNum
"      new
"    endif
" 
"    if buflisted(l:currentBufNum)
"      execute("bdelete! ".l:currentBufNum)
"    endif
" endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

