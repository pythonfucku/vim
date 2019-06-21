"TODO：
"1.git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"2.在https://github.com/powerline/fonts下载使用powerline打过补丁的字体，里面也有安装方法。下载字体后，Linux系统上直接执行 ./install.sh 文件来安装字体（注意当前工作目录）

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"color
Plugin 'jnurmine/solarized'
Plugin 'altercation/vim-colors-solarized'
Plugin 'DoxygenToolkit.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline'
"git clone https://github.com/powerline/fonts ~/.vim/bundle/vim-airline-fonts

Plugin 'Valloric/YouCompleteMe'
"./install --clang-complete
"cp third_party/ycmd/examples/.ycm_extra_conf.py ~/
"
Plugin 'The-NERD-Commenter'
Plugin 'AuthorInfo'
Plugin 'Indent-Guides'
Plugin 'taglist.vim'
Plugin 'winmanager'
Plugin 'Auto-Pairs'

Plugin 'Syntastic'
"sudo pip install pyflakes
"sudo pip install pylint
"sudo pip install pep8



"--------------------------------
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set color
syntax on
syntax enable
set t_Co=256
if has('gui_running')
    set background=light
else
    set background=dark
endif
"liangrentao-color
"colorscheme solarized


"行号
set nu

"背景透明
"hi Normal  ctermfg=252 ctermbg=none

"高亮光标所在行
set cursorline

"粘贴时保持格式
"set paste

"在搜索的时候忽略大小写
set ignorecase

"在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch
"并且高亮
set hlsearch

"解决菜单乱码
language messages zh_CN.utf-8

"对齐线
map <leader>il :IndentLinesToggle<CR>


"打开文件类型检测功能
filetype on
"不同文件类型采用不同缩进
filetype indent on
filetype indent plugin on
"允许使用插件
filetype plugin on
filetype plugin indent on

set tabstop=4
"python自动缩进
au BufNewFile,BufRead *.py 
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix
set smarttab
set autoindent
"c
au BufNewFile,BufRead *.c
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix
set smarttab
set autoindent
"js
au BufNewFile,BufRead *.js
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix
set smarttab
set autoindent
"html
au BufNewFile,BufRead *
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix
set smarttab
set autoindent

autocmd BufNewFile *.py, exec ":call SetTitle()"
func SetTitle()
  call setline(1, "\#!/usr/bin/env python") 
  call append(line("."), "\#-*- coding:utf-8 -*-") 
  normal G
endfunc

"允许使用退格键
set backspace=eol,start,indent

"set showcmd
"
"光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3

" 启动显示状态行(1),总是显示状态行(2)
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=1

"状态行显示的内容
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} 

" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1





"""""""""""""""""""""插件设置""""""""""""""""""""""""""""""""""""""""""

"快速生成函数注释说明
let g:DoxygenToolkit_authorName="liangrt"
let g:DoxygenToolkit_licenseTag="My own license\<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "yes"
let g:DoxygenToolkit_maxFunctionProtoLines = 30
nmap <F1> :Dox<cr>

"自动添加作者
let g:vimrc_author=''
let g:vimrc_email=''
let g:vimrc_homepage='@_@"'
nmap <F2> :AuthorInfoDetect<cr>

"对NERD_commenter的设置 注释
let NERDShutUp=1

"对齐辅助显示
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=0
nmap <F3> :IndentGuidesToggle <cr>
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4
let g:indent_guides_auto_colors = 0

"To run
nmap <F5> <ESC>:w<CR> :!python %<CR>

"NERDTree快捷键
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:neocomplcache_enable_at_startup = 1
let g:modifiable= 1
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
nmap <F12> :NERDTree<CR>

"源码分析工具tagList
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
nmap tl :TlistToggle <cr>

"文件浏览组件
let g:winManagerWidth = 0
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

"YouCompleteMe
" 允许自动加载.ycm_extra_conf.py，不再提示
let g:ycm_confirm_extra_conf=0
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 开启tags补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 键入第一个字符时就开始列出匹配项
let g:ycm_min_num_of_chars_for_completion=1
" YCM相关快捷键，分别是\gl, \gf, \gg
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>


"airline
let g:airline_theme="molokai" 
"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   
"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"设置切换Buffer快捷键"
nnoremap <C-tab> :bn<CR>
nnoremap <C-s-tab> :bp<CR>
" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
" 设置consolas字体"前面已经设置过
"set guifont=Consolas\ for\ Powerline\ FixedD:h11
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"syntastic
"设置error和warning的标志
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='►'
"总是打开Location List（相当于QuickFix）窗口，如果你发现syntastic因为与其他插件冲突而经常崩溃，将下面选项置0
let g:syntastic_always_populate_loc_list = 1
"自动打开Locaton List，默认值为2，表示发现错误时不自动打开，当修正以后没有再发现错误时自动关闭，置1表示自动打开自动关闭，0表示关闭自动打开和自动关闭，3表示自动打开，但不自动关闭
let g:syntastic_auto_loc_list = 1
"修改Locaton List窗口高度
let g:syntastic_loc_list_height = 5
"打开文件时自动进行检查
let g:syntastic_check_on_open = 1
"自动跳转到发现的第一个错误或警告处
let g:syntastic_auto_jump = 0
"进行实时检查，如果觉得卡顿，将下面的选项置为1
let g:syntastic_check_on_wq = 0
"高亮错误
let g:syntastic_enable_highlighting=1
"让syntastic支持C++11
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
"设置pyflakes为默认的python语法检查工具
let g:syntastic_python_checkers = ['pyflakes']
"修复syntastic使用:lnext和:lprev出现的跳转问题，同时修改键盘映射使用sn和sp进行跳转
function! <SID>LocationPrevious()
  try
    lprev
  catch /^Vim\%((\a\+)\)\=:E553/
    llast
  endtry
endfunction
function! <SID>LocationNext()
  try
    lnext
  catch /^Vim\%((\a\+)\)\=:E553/
    lfirst
  endtry
endfunction
nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
nmap <silent> sp    <Plug>LocationPrevious
nmap <silent> sn    <Plug>LocationNext
"关闭syntastic语法检查, 鼠标复制代码时用到, 防止把错误标志给复制了
nnoremap <silent> <Leader>ec :SyntasticToggleMode<CR>
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

