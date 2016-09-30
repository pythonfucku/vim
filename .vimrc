syntax on
syntax enable

set t_Co=256

if has('gui_running')
	set background=light
else
	set background=dark
endif

colorscheme solarized

"set nocompatible
"syntax on
":colorscheme evening

set tags =/home/liangrt/app/tags
"set tags+=~/.vim/systags

"背景透明
"hi Normal  ctermfg=252 ctermbg=none
"高亮光标所在行
set cursorline
"粘贴时保持格式
set paste
"在搜索的时候忽略大小写
set ignorecase
"在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch
"并且高亮
set hlsearch
"解决菜单乱码
language messages zh_CN.utf-8
"--------------------- 编码相关 ------------------------------------
"打开文件类型检测功能
filetype on
"不同文件类型采用不同缩进
filetype indent on
filetype indent plugin on
"允许使用插件
filetype plugin on
filetype plugin indent on
"为C程序提供自动缩进,使用C样式的缩进
"set smartindent
"set cindent
"python自动缩进
au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set textwidth=79 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix
set smarttab
set autoindent
"允许使用退格键
set backspace=eol,start,indent
"set autoindent         "--------------------------
"文件内部快速执行该python文件,没绑定上，不知道为什么
"map <F5> :!python -u %<cr>
nmap <F5> <ESC>:w<CR> :!python %<CR>

"自动添加作者
let g:vimrc_author='Crow@ZPT' 
let g:vimrc_email='lrt_no1@163.com' 
let g:vimrc_homepage='@_@"' 
nmap <F2> :AuthorInfoDetect<cr> 
"对NERD_commenter的设置 注释
let NERDShutUp=1
"快速生成函数注释说明
map <F1> : Dox<cr>
let g:DoxygenToolkit_authorName="liangrt"
let g:DoxygenToolkit_licenseTag="My own license\<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "yes"
let g:DoxygenToolkit_maxFunctionProtoLines = 30
"--------------------- 编码相关 END------------------------------
"NERDTree快捷键
nmap <F12> :NERDTree<CR>
" NERDTree.vim
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:neocomplcache_enable_at_startup = 1 
let g:modifiable= 1 
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"源码分析工具tagList
let Tlist_Show_One_File=1 
let Tlist_Exit_OnlyWindow=1
nmap tl :TlistToggle <cr>
"map <silent> <leader>tl :TlistToggle <cr>
"文件浏览组件
let g:winManagerWidth = 0
let g:winManagerWindowLayout='FileExplorer|TagList' 
nmap wm :WMToggle<cr>
"对齐辅助显示
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=0
nmap <F3> :IndentGuidesToggle <cr>
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4
let g:indent_guides_auto_colors = 0                                



