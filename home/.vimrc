"==================基础==================
set nocompatible
syntax on
filetype plugin on
filetype plugin indent on

"==================编辑==================
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set whichwrap=b,s,<,>,[,],h,l
"set nobackup		" DON'T keep a backup file
"set backupext=.bak
"set patchmode=.orig "让VIM保存原始文件，并指定其扩展名
set history=50		" keep 50 lines of command line history
set ignorecase			" ignore case
set smartcase			" but don't ignore it, when search string contains uppercase letters
set hidden 				" allow switching buffers, which have unsaved changes
set autoindent
set cindent
set tabstop=4
set shiftwidth=4		" 4 characters for indenting
"set mouse=a				" use mouse in xterm to scroll
set completeopt=menu,longest,preview
set confirm
set textwidth=64 "每行最多64个字符，超过就折行；寝室的显示器宽度
"set textwidth=68 "每行最多68个字符，超过就折行
set formatoptions+=mM "m东亚文字折行，M连行时不插空格
set fileformats=unix,dos,mac "将UNIX文件格式做为第一选择，而将MS-DOS的文件格式做为第二选择

"==================显示==================
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch		" do incremental searching
set number				" line numbers
set scrolloff=3 		" 3 lines bevore and after the current line when scrolling
set showmatch			" showmatch: Show the matching bracket for the last ')'?
colorscheme desert "色彩设置

"==================gVim7.1在windows下的编码设置。By Huadong.Liu==================
set fileencodings=utf-8,chinese,cp936,ucs-bom
" if has("win32")
" 	set fileencoding=chinese
" else
" 	set fileencoding=utf-8
" endif
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
"language messages zh_CN.utf-8
"Windows 系统下UTF-8是有BOM的
"set bomb 

" "==================VimIM设置==================
" " :let g:vimim_cloud = 'baidu,sogou,qq,google'  
" :let g:vimim_cloud = 'sogou'  
" " :let g:vimim_map = ''  
" " :let g:vimim_mode = 'dynamic'  
" " :let g:vimim_mycloud = 0  
" " :let g:vimim_plugin = 'C:\Program Files\Vim\vim74\plugin'  
" " :let g:vimim_punctuation = 2  
" :let g:vimim_punctuation = 3  
" " :let g:vimim_shuangpin = 0  
" " :let g:vimim_toggle = 'wubi,pinyin,baidu,sogou,qq,google' 
" " :let g:vimim_toggle = 'wubi,sogou,hangul' 
" :let g:vimim_toggle = 'wubi,sogou' 

set guifont=Inconsolata:h14 "韩语输入字体设置
set gfw=cjke:h14 "韩语输入字体设置

"==================工作路径设置==================
"自动切换工作目录，以当前打开的文件所在目录为准
set autochdir
set path=.,$HOME,$HOME\Desktop\

if &term =~ "xterm"
  if has("terminfo")
    set t_Co=8
    set t_Sf=^[[3%p1%dm
    set t_Sb=^[[4%p1%dm
  else
    set t_Co=8
    set t_Sf=^[[3%dm
    set t_Sb=^[[4%dm
  endif
endif

autocmd FileType c,cpp  map <buffer> ,m :w<cr>:make<cr>
autocmd FileType c,cpp  map <buffer> ,i :w<cr>:!indent -kr -i4 -ts4 *.cpp<cr>
nmap ,cn :cn<cr>
nmap ,cp :cp<cr>
nmap ,cw :cw 10<cr> 

execute pathogen#infect()
