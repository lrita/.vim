" 设置Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" 打入快速输入括号,引号等,避免出错
Plugin 'spf13/vim-autoclose'
" 编辑框下面的状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" vim-airline configure
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_enable_syntastic=1
let g:airline_theme="powerlineish"
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

Plugin 'chazy/cscope_maps'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'vim-scripts/a.vim'
" 在normal模式下，F12切换.c/.h之间
" 映射参考 http://haoxiang.org/2011/09/vim-modes-and-mappin/
nnoremap <silent> <F12> :A<CR>
" 对应文件不存在时，不切换当前文件
let g:alternateNoDefaultAlternate = 1
" let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:../include/**'

" 优化行尾的多余空格，https://github.com/ntpeters/vim-better-whitespace
Plugin 'ntpeters/vim-better-whitespace'
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1

Plugin 'taglist.vim'
Plugin 'vim-scripts/winmanager'
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>

Plugin 'fatih/vim-go'
" 升级golang版本后，可以考虑移除下面的配置，默认支持 gopls 模式
let g:go_gopls_enabled = 0
let g:go_def_mode = 'guru'
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_build_constraints = 1

"Plugin 'mdempsky/gocode', {'rtp': 'vim/'}

" C++11/14/17 语法高亮增强，https://github.com/octol/vim-cpp-enhanced-highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'derekwyatt/vim-scala'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <F6> :YcmDiags<CR>
" 跳转到定义 ctrl + ]
nnoremap <C-l> :YcmCompleter GoTo<CR>
nnoremap <F2> :YcmCompleter GoToInclude<CR>
nnoremap <F4> :YcmCompleter GetType<CR>
nnoremap <C-'> :YcmCompleter GetParent<CR>

"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
" 文件类型白名单，在filetype符合的文件中开启YCM插件
let g:ycm_filetype_whitelist = {
	\ 'cpp': 1
	\ }
" let g:ycm_filetype_blacklist = { '*': 1 }
"let g:ycm_collect_identifiers_from_tags_files = 1
"补全语法里的关键字
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
"let g:ycm_key_invoke_completion = '<C-Space>'
"https://github.com/Valloric/YouCompleteMe#the-gycm_goto_buffer_command-option
"let g:ycm_complete_in_comments = 1
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_filepath_completion_use_working_dir = 1
" 补全内容不以分割子窗口形式出现，只显示补全列表
""set completeopt-=preview"

" 学习参考 https://yianwillis.github.io/vimcdoc/doc/help.html#reference_toc
"          https://github.com/spf13/spf13-vim
"
" 可以考虑的插件 https://github.com/SirVer/ultisnips
"                https://github.com/rhysd/vim-grammarous
"                https://github.com/terryma/vim-multiple-cursors
"                https://github.com/xolox/vim-easytags
"                https://github.com/majutsushi/tagbar
"                https://github.com/preservim/nerdtree
"                https://github.com/jistr/vim-nerdtree-tabs
"                https://segmentfault.com/q/1010000000262368
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
"let g:rustfmt_autosave=1

" google/vim-maktaba是一个vim插件库，其他的一些插件会依赖该库，比如google/vim-codefmt等
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
" google/vim-glaive是google/vim-maktaba的一个工具库，google/vim-codefmt等依赖这个
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'
" 代码格式化插件
Plugin 'google/vim-codefmt'
" 增强vim文本搜索功能
Plugin 'haya14busa/incsearch.vim'
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
" 增强搜索，支持模糊查找，拼写容错，分别映射快捷键为z/ z?
Plugin 'haya14busa/incsearch-fuzzy.vim'
function! s:config_fuzzyall(...) abort
  return extend(copy({
  \  'converters': [
  \    incsearch#config#fuzzy#converter(),
  \    incsearch#config#fuzzyspell#converter(),
  \  ],
  \}), get(a:, 1, {}))
endfunction
noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))

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
" <============设置Vundle结束=============>

" the glaive#Install() should go after the "call vundle#end()"
" google/vim-glaive 插件所需的启动命令
call glaive#Install()

" <============google/vim-codefmt插件配置============>
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /Users/yanqing11/tmp/codefmt/google-java-format-VERSION-all-deps.jar"
" 使用~/.clang-format控制clang_format风格
Glaive codefmt clang_format_style='file'
Glaive codefmt shfmt_options=`['-i', '2', '-sr', '-ci', '-bn']`

" 映射F8键执行代码格式化命令
nnoremap <F8> :FormatCode<CR>
" 如果要开启保存时自动格式化，打开加入以下代码
"augroup autoformat_settings
  "autocmd FileType bzl AutoFormatBuffer buildifier
  "autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  "autocmd FileType dart AutoFormatBuffer dartfmt
  "autocmd FileType go AutoFormatBuffer gofmt
  "autocmd FileType gn AutoFormatBuffer gn
  "autocmd FileType html,css,json AutoFormatBuffer js-beautify
  "autocmd FileType java AutoFormatBuffer google-java-format
  "autocmd FileType python AutoFormatBuffer yapf
  "autocmd FileType sh AutoFormatBuffer shfmt
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
"augroup END
" <============google/vim-codefmt插件配置结束============>


" ==========自定义配置项:===============
" 各种配置的参考文档可以参见: https://yianwillis.github.io/vimcdoc/doc/usr_toc.html

filetype plugin on

" 显示行号
set nu

" set tags=./tags,/home/huyq/work/ott/htk_dfb/tags,/home/huyq/work/dvbs/hitobox/Hitobox-dvbs-ott/tags,/home/huyq/work/ott/OTT-program/iptv-program/tags,/home/huyq/work/iptv/multi-player/tags,/home/huyq/work/iptv/connman-master/tags,/home/huyq/work/dvbs/buildroot-2012.08/output/build/libhicore-75c2c7051bdd/tags,/home/huyq/work/dvbs/buildroot-2012.08/output/build/libhi-e0a4183ab4d2/tags
" set tags=./tags,tags,/Users/yanqing11/lib/include/tags,$HOME
set tags=./tags,tags,/Users/yanqing11/lib/libnfnetlink-1.0.1/tags,/Users/yanqing11/lib/include/tags

" 根据文件类型，重新定义tab的长度
" 参考 https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
augroup tab_formating
  autocmd BufRead,BufNewFile *.py set tabstop=2 expandtab shiftwidth=4
  autocmd BufRead,BufNewFile *.[ch] set tabstop=4 expandtab shiftwidth=4
  autocmd BufRead,BufNewFile *.cc set tabstop=4 expandtab shiftwidth=4
  autocmd BufRead,BufNewFile *.hh set tabstop=4 expandtab shiftwidth=4
  autocmd BufRead,BufNewFile *.cpp set tabstop=4 expandtab shiftwidth=4
  autocmd BufRead,BufNewFile *.rs set tabstop=4 shiftwidth=4
  autocmd BufRead,BufNewFile *.go set filetype=go shiftwidth=4 tabstop=4
  autocmd BufRead,BufNewFile *.proto set filetype=proto expandtab shiftwidth=4 tabstop=4
  autocmd BufRead,BufNewFile *.yml set tabstop=2 expandtab shiftwidth=2
  autocmd BufRead,BufNewFile *.sh set tabstop=2 expandtab shiftwidth=2
augroup END

" 开启自动缩进，配合前面的filetype plugin indent on
set autoindent

" 不要换行
set nowrap

" 命令模式下补全，即按:后，输入命令时，支持TAB补全
set wildmenu
" 补全列表展示的模式，详情可以参考 https://zhuanlan.zhihu.com/p/87021392
set wildmode=list:longest,full
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif
" <=========命令补全结束===========>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w
" Set to auto read when a file is changed from the outside
"set autoread
" Don't redraw while executing macros (good performance config)
set lazyredraw
" http://www.cnblogs.com/penseur/archive/2011/02/25/1964522.html
set magic
" 当使用et将Tab替换为空格之后,按下一个Tab键就能插入4个空格,但要想删除这4个空格,就得按4下
" Backspace,很不方便。设置smarttab之后,就可以只按一下Backspace就删除4个空格了。
set smarttab

" 使能鼠标，不推荐开启
" set mouse=a

" 设置256色，需要在开启语法设置之前。
set t_Co=256

" ignorecase搜索时忽略大小写
set ignorecase

" 光标行显示下划线
set cursorline

colorscheme wombat256mod
"colorscheme inkpot

" 开启语法高亮功能，实际上，它只是执行“:source $VIMRUNTIME/syntax/syntax.vim”
" 关于设置你自己的语法高亮色彩，可以参见syncolor
" 其根据文件扩展名识别出的filetype，在$VIMRUNTIME/syntax/下寻找对应的语法解析
" 脚本，例如C语言的/usr/local/Cellar/vim/8.2.0800/share/vim/vim82/syntax/c.vim
" 更多内容可以参见 https://yianwillis.github.io/vimcdoc/doc/syntax.html#syntax.txt
" 扩展：可以在打开的文件编辑时，执行命令":runtime! syntax/2html.vim"，可以把当前的
" 语法着色的代码转换成一个html文件供编辑器打开。
syntax enable
let g:syntax_cmd = "enable"
set hlsearch 			"highlight syntax search
"set foldmethod=manual

" VIM为了兼容VI的模式，默认backspace没有删除功能
" indent是指可以删除字段缩进，eol是可以通过退格键合并两行
" start则是可以删除插入前的输入(bs)
set backspace=indent,eol,start

let g:MouseMode='0'
fun! SwitchMouseMode()
	if g:MouseMode == '0'
		setlocal mouse=a
		let g:MouseMode='1'
	else
		setlocal mouse=
		let g:MouseMode='0'
	endif
endfun

let g:PasteMode='0'
fun! SwitchPasteMode()
	if g:PasteMode == '0'
		setlocal paste
		let g:PasteMode='1'
	else
		setlocal nopaste
		let g:PasteMode='0'
	endif
endfun

map <silent> <F3> :call SwitchPasteMode()<cr> "粘贴时取消自动缩进功能
map <silent> <F7> :call SwitchMouseMode()<cr>
"set foldmethod=marker
"显色风格
"see :h omnifunc in Vim
"set omnifunc=omni
"配置Powerline插件
set laststatus=2
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set fencs=utf-8,gbk,gb2312,gb18030,cs-bom,cp936,latin1
" 习惯新建文件是某种编码则在此写上此编码
set enc=utf-8
" set fenc=utf-8
set tenc=utf-8
"taglist set
"nnoremap <slient> <F4> :TlistToggle<CR>
"let Tlist_Exit_OnlyWindow = 1
"let Tlist_Sort_Type = "order"
"let Tlist_Display_Prototype = 0
"let Tlist_compart_Format = 1
"let Tlist_GainFocus_on_ToggleOpen = 1
"let Tlist_Enable_Fold_Colum = 0
"let Tlist_WinWidth = 40
"let Tlist_Show_One_File=1
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr> thon  set
nmap tn :tabnext<CR>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
