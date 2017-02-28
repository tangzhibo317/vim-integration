"================================================================================
"= Vundle插件管理配置
"================================================================================

set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


"--------------------------------------------------------------------------------
"- 插件
"--------------------------------------------------------------------------------

"NERDTree树状目录
    Plugin 'https://github.com/scrooloose/nerdtree.git'
    "自动运行
    "autocmd VimEnter * NERDTreeToggle
    "快捷键
    map <C-n> :NERDTreeToggle<CR>
    "关闭窗口时关闭
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif"""")""))
    "设置窗口宽度
    let NERDTreeWinSize=28

"TagBar显示关键字
    Plugin 'https://github.com/majutsushi/tagbar.git'
    let g:tagbar_ctags_bin='/usr/bin/ctags'
    let g:tagbar_width=20
    "autocmd VimEnter * TagbarToggle

"AirLine窗口美化
"需要安装powerline字体"
    Plugin 'https://github.com/bling/vim-airline.git'
    "颜色
    set t_Co=256
    set laststatus=2
    let g:airline_detect_whitespace          = 0 "关闭空白符检测
    let g:airline#extensions#tabline#enabled = 1 "顶部tab栏显示
    let g:airline_theme                      = "bubblegum" "设定主题
    "显示Buf的序号
    let g:airline#extensions#tabline#buffer_nr_show = 1
    let g:airline_powerline_fonts = 1

"AirLine主题
    Plugin 'https://github.com/vim-airline/vim-airline-themes.git'

"CtrlP 快速定位
    Plugin 'https://github.com/kien/ctrlp.vim.git'

"Neocomplcache 代码提示自动补全
    Plugin 'https://github.com/Shougo/neocomplcache.vim.git'

    " Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
    " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplcache.
    let g:neocomplcache_enable_at_startup = 1

    " Recommended key-mappings.
    " <CR>: close popup and save indent.
    inoremap <silent> tlt <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
      return "\<C-n>".neocomplcache#smart_close_popup()
    endfunction

    " <TAB>: completion.
    inoremap <expr><C-n>  pumvisible() ? "\<C-n>" : "\<TAB>"

    if !exists('g:neocomplcache_force_omni_patterns')
        let g:neocomplcache_force_omni_patterns = {}
    endif
    let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

"AutoPairs 自动补全括号
    Plugin 'https://github.com/jiangmiao/auto-pairs.git'

"Ack 全目录搜索
"系统中需要安装Ack"
    Plugin 'https://github.com/mileszs/ack.vim.git'

"DoxygenToolkit 注释
    Plugin 'https://github.com/vim-scripts/DoxygenToolkit.vim.git'

    let g:DoxygenToolkit_briefTag_pre="@brief "
    let g:DoxygenToolkit_paramTag_pre="@param "
    let g:DoxygenToolkit_returnTag="@return "
    let g:DoxygenToolkit_authorTag = "@author "
    let g:DoxygenToolkit_blockHeader=""
    let g:DoxygenToolkit_blockFooter=""
    let g:DoxygenToolkit_authorName="yxn"
    let g:DoxygenToolkit_licenseTag="1.0"

"VimBdo 安全管快速关闭buffer
    Plugin 'https://github.com/chawuciren/vim-bdo.git'

"Vim-go golang插件
    Plugin 'https://github.com/fatih/vim-go.git'
    let g:go_fmt_autosave = 0
    let g:go_play_open_browser = 0

"PhpFmt PHP代码格式化
    Plugin 'https://github.com/chawuciren/vim-phpformat.git'

    let g:phpfmt_on_save = get(g:, 'phpfmt_on_save', 0) " format on save (autocmd)
    let g:phpfmt_config = expand('<sfile>:p:h') . '/.vim/.phpfmt.ini'
    let g:phpfmt_php_path = 'php'   " Path to PHP
    "let g:phpfmt_prepasses_list = "AutoPreincrement,JointToImplode"
    "let g:phpfmt_passes_list = "ReturnNull"
    let g:phpfmt_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
    autocmd FileType php noremap <buffer>  <C-j>f :call PhpFmtFixFile()<CR>

"JsBeautify Javascript代码格式化
    Plugin 'https://github.com/maksimr/vim-jsbeautify.git'

    autocmd FileType javascript noremap <buffer>  <C-j>f :call JsBeautify()<cr>
    " for json
    autocmd FileType json noremap <buffer> <C-j>f :call JsonBeautify()<cr>
    " for jsx
    autocmd FileType jsx noremap <buffer> <C-j>f :call JsxBeautify()<cr>
    " for html


"All of your Plugins must be added before the following line
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
" Put your non-Plugin stuff after this lined


"================================================================================
"= 配色方案
"================================================================================

syntax enable
let g:solarized_termcolors=256
set t_Co=256
set background=dark
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow-Night
colorscheme Tomorrow-Night


"================================================================================
"= 编辑器配置
"================================================================================

"显示光标当前位置
set ruler
"高亮显示当前行/列
set cursorline
set cursorcolumn
"高亮显示搜索结果
set hlsearch
"禁止折行
"set nowrap
"设置文件编码兼容gbk等格式
let &termencoding=&encoding
set fileencodings=utf-8,gb18030,gbk,gb2312,big5
"设置折叠方式
set fdm=indent
"设置搜索忽略大小写
set ignorecase
"设置背景色，每种配色有两种方案，一个light、一个dark "
set background=dark
"默认不生成备份文件
set nobackup
"显示行号
set nu
"打开语法高亮
syntax on
"设置缩进有三个取值cindent(c风格)、smartindent(智能模式，其实不觉得有什么智能)、autoindent(简单的与上一行保持一致) "
"set smartindent
set autoindent
"在windows版本中vim的退格键模式默认与vi兼容，与我们的使用习惯不太符合，下边这条可以改过来 "
set backspace=indent,eol,start 
"制表符占4个空格
set tabstop=4 
"将tab换成4个空格
set expandtab
"一次退格删除4个空格
set softtabstop=4
"在行首按Tab加入shiftwidth个空格，否则加入tabstop个空格
set smarttab
"默认缩进4个空格大小 "
set shiftwidth=4
"增量式搜索"
set incsearch
"高亮搜索 "
set hlsearch
"显示Tab符号"
set list listchars=tab:\|-,trail:-
"设置标尺
set colorcolumn=120



"================================================================================
"= 快捷键
"================================================================================

"--------------------------------------------------------------------------------
"- 按键定义
"--------------------------------------------------------------------------------

"编辑
    let yvt = {}
    let yvt.keymap = {}
    "将jj映射为Esc键"
    "let yvt.keymap["jj"] = {"cmap": "<Esc>l", "imap": "<Esc>"}
    "移动当前行到下一行"
    let yvt.keymap["MoveLineDown"] = {"key": "<C-j>j", "nmap": "ddp", "imap": "<Esc>lddpi"}
    "移动当前行到上一行"
    let yvt.keymap["MoveLineUp"] = {"key": "<C-j>k","nmap": "ddkkp", "imap": "<Esc>lddkkp"}
    "复制当前行"
    let yvt.keymap["CopyCurrentLine"] = {"key": "<C-j>y", "nmap": "yyp", "imap": "<Esc>lyyp"}
    "删除当前行"
    let yvt.keymap["DelCurrentLine"] = {"key": "<C-j>d", "nmap": "dd", "imap": "<Esc>lddi"}
    "在行尾补全句号并另起一行
    let yvt.keymap["EndLineDown"] = {"key": "<C-j>n", "nmap": "$a;<CR><Esc>", "imap": "<Esc>$a;<CR>"}
    "在行尾补全花括号并另起一行
    let yvt.keymap["EndLineBlockDown"] = {"key": "<C-j>m", "nmap": "$a {<CR><Esc>", "imap": "<Esc>l$a {<CR>"}
    "增加空行"
    let yvt.keymap["NewEmptyLine"] = {"key": "<C-j>l", "nmap": "o<Esc>", "imap": "<Esc>lo<Esc>"}
    "删除当前单词
"工具
    "清除编辑缓存
    let yvt.keymap["CleanUpSwFile"] = {"key": "<C-m>s", "nmap": "\:!find . -name \"*.swp\" \\| xargs rm -fj<CR>:!find . -name \"*.swo\" \\| xargs rm -fj"}
    "开启/关闭Tree控件"
    let yvt.keymap["OpenNerdTree"] = {"key": "<C-m>y", "nmap": ":NERDTreeToggle<CR>"}
    let yvt.keymap["OpenTagbar"] = {"key": "<C-m>u", "nmap": ":TagbarToggle<CR>"}
    "定位到上一个／下一个buffer
    let yvt.keymap["OpenNextBuffer"] = {"key": "<C-m>n", "nmap": ":Bn<CR>"}
    let yvt.keymap["OpenPrevBuffer"] = {"key": "<C-m>b", "nmap": ":Bp<CR>"}


"--------------------------------------------------------------------------------
"- 快捷键函数
"--------------------------------------------------------------------------------

function! YVimIntGetKeyCommand(mapindex, mode)
    let s:command = g:yvt["keymap"][a:mapindex][a:mode]
    return s:command
endfunction

function! YVimIntRunKeyCommand(mapindex, mode)
    let s:key = g:yvt["keymap"][a:mapindex]["key"]
    let s:command = a:mode . " <C-n> " . s:key
    exe s:command
endfunction

function! YVimIntBindKeyMap()
    for mapindex in keys(g:yvt["keymap"])
        let s:key = g:yvt["keymap"][mapindex]["key"]
        let s:keymap = g:yvt["keymap"][mapindex]
        for mode in keys(s:keymap)
            if mode == "nmap"
                let s:execommand = mode . " " . s:key . " " . YVimIntGetKeyCommand(mapindex, mode) . ":call YVimIntRunKeyCommand('" . mapindex . "','" . mode . "')<CR>"
                exe s:execommand
            elseif mode == "imap"
                let s:execommand = mode . " " . s:key . " " . YVimIntGetKeyCommand(mapindex, mode) . "<Esc>:call YVimIntRunKeyCommand('" . mapindex . "','" . mode . "')<CR>a"
                exe s:execommand
            else
            endif
        endfor
    endfor
endfunction

"执行绑定快捷键
autocmd VimEnter * call YVimIntBindKeyMap()

