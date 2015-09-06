set nocompatible              " be iMproved, required                                                                                       
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'taglist.vim'
Plugin 'bling/vim-airline'
" bling/vim-airline configure
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
Plugin 'vim-scripts/winmanager'
Plugin 'Shougo/neocomplcache.vim'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
set completeopt-=preview

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
"let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

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


"显示行号
set nu
"set tags=./tags,/home/huyq/work/ott/htk_dfb/tags,/home/huyq/work/dvbs/hitobox/Hitobox-dvbs-ott/tags,/home/huyq/work/ott/OTT-program/iptv-program/tags,/home/huyq/work/iptv/multi-player/tags,/home/huyq/work/iptv/connman-master/tags,/home/huyq/work/dvbs/buildroot-2012.08/output/build/libhicore-75c2c7051bdd/tags,/home/huyq/work/dvbs/buildroot-2012.08/output/build/libhi-e0a4183ab4d2/tags
autocmd BufRead,BufNewFile *.py set tabstop=4 noexpandtab shiftwidth=4
autocmd BufRead,BufNewFile *.[ch] set tabstop=8 noexpandtab shiftwidth=8
autocmd BufRead,BufNewFile *.cc set tabstop=8 noexpandtab
autocmd BufRead,BufNewFile *.cpp set tabstop=8 noexpandtab
set tags=./tags,/home/neal/work/libevent-2.0.22-stable/tags
set cin
"不要换行
set nowrap
filetype plugin on
"命令模式下补全
set wildmenu
set wildmode=list:longest,full

"使能鼠标
"set mouse=a
set t_Co=256
"ignorecase搜索时忽略大小写
set ignorecase
set cursorline "光标行显示下划线
colorscheme wombat256mod
"colorscheme inkpot 
syntax enable
let g:syntax_cmd = "enable"
set hlsearch 			"highlight syntax search
"set foldmethod=manual
set backspace=indent,eol,start

"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
"let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
"let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
"let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"set completeopt=menuone,menu,longest

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
map <silent> <F5> :set foldmethod=syntax<cr>
map <silent> <F7> :call SwitchMouseMode()<cr>
"set foldmethod=marker
"显色风格
"set omnifunc=omni
"配置Powerline插件
set laststatus=2 
"let g:molokai_original = 1 
"ai为设置自动缩进
"tabstop=4设置tab宽度为4个空格宽
"setenv VIMINIT 'set ai ignorecase tabstop=4'
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"tab set 4

set fencs=utf-8,gbk,gb2312,gb18030,cs-bom,cp936,latin1
"习惯新建文件是某种编码则在此写上此编码
set enc=utf-8
"set fenc=utf-8  
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
"""""""""""""""""""""""""""""""
"setting
"""""""""""""""""""""""""""""""
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr> thon  set

"""""""""""""""""""""""""""""""
"winmanger setting  map to 'wm' keys
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
"""""""""""""""""""""""""""""""
" a.vim set
"""""""""""""""""""""""""""""""
nmap tn :tabnext<cr>
nnoremap <silent> <F12> :A<CR>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
