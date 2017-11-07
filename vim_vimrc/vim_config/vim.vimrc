" #######################################
"
" 對vim本身的配置
"
" #######################################

" ######## 鼠標 ########
" 開啟滑鼠,a為所有模式
set mouse=a

" 所有的複製貼上都會根據系統剪貼簿的內容更變，或是更變系統剪貼簿。
set clipboard=unnamed

" ######## 兼容性 ########
" 為了使用vim的一些特性，設置為不兼容vi
"set nocp
set nocompatible

" ######## 編碼 ########
" 菜單語言編碼
set langmenu=en_US.utf-8

" 消息語言編碼,與vim內部編碼一致,不然提示信息亂碼
language message en_US.utf-8

" 終端使用的編碼
set termencoding=en_US.utf-8

" vim內部使用編碼
set encoding=utf-8

" ######## 文件 #########
" 默認文件編碼,新建一個文件時採用的編碼
set fileencoding=utf-8

" 打開一個文件時,按照給出的順序探測文件編碼
set fileencodings=ucs-bom,utf-8,big5,cp936,gb18030,euc-jp,euc-kr,latin1
" 強制使用編碼打開文件 :e ++enc=utf-8 myfile.txt

" 不支援 multi_byte 警告
if !has("multi_byte")
    echoerr "If +multi_byte is not included, you should compile Vim with big features."
endif

" 開啟文件類型檢測
" command						detection	plugin		indent
" :filetype on					on			unchanged	unchanged
" :filetype off					off			unchanged	unchanged
" :filetype plugin on			on			on			unchanged
" :filetype plugin off			unchanged	off			unchanged
" :filetype indent on			on			unchanged	on
" :filetype indent off			unchanged	unchanged	off
" :filetype plugin indent on	on			on			on
" :filetype plugin indent off	unchanged	off			off
filetype plugin indent on

" 備份文件 關閉
set nobackup

" 臨時交換文件 關閉
set noswapfile

" 編輯時的備份文件 關閉
set nowritebackup

" 撤銷文件 關閉
set noundofile

" 自動存檔
set autowrite

" 設定文件瀏覽器目錄為當前目錄
"set autochdir

" ####### 個性化 ##########
" 設置tab佔用4個空格
set tabstop=4
set softtabstop=4

" 自動縮排對齊間隔數
set shiftwidth=4

" 智慧TAB功能
set smarttab

" "將TAB鍵轉換成空格
set expandtab

" 保留 100 個使用過的指令
set history=500

" 增強刪除鍵 才能強制刪除引號補全
set backspace=indent,eol,start

" 忽略大小寫搜尋
set ignorecase

" 智慧大小寫搜尋
set smartcase

" 加強版搜尋
set incsearch

" ####### 程式顯示個性化 ##########
" 啟用語法高亮度
syntax enable

" 打開語法高亮度
syntax on

" 設置一行的最大字符數,超過時將被分成兩行
"set textwidth=80

" 關閉自動換行
"set nowrap

" 高亮度列
set cursorline

" 高亮度行
set cursorcolumn

" 搜尋結果高亮度提示
set hlsearch

" ####### 幫助顯示個性化 ##########
" 確認功能,遇到需確認事項會顯示詢問
set confirm

" 支援256色
set t_Co=256

" 標尺，用於顯示光標位置的行號和列號，逗號分隔。
" 每個窗口都有自己的標尺。如果窗口有狀態行，標尺在那裡顯示。否則，它顯示在屏幕的最後一行上。
set ruler

" 顯示行號
set number

" 顯示相對行號
set relativenumber

" 高亮度光標所在行以及行號
" set cursorline

" 顯示換行空白等隱藏符號
" set list

" 顯示Tab符，使用一高亮豎線代替
set listchars=tab:\|\

" 顯示括號配對情況
set showmatch

" 在狀態欄顯示正在輸入的命令
set showcmd

" 模式提示
set showmode

"開啟狀態欄信息
set laststatus=2

"命令行的高度，默認為1，這裡設為2
set cmdheight=2

" ####### 自定義個性化 ##########
"每行超過80個的字符用下劃線標示
""au BufRead,BufNewFile *.wiki,*.md,*.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm, *.py,*.rb,*.hs,*.vim 2match Underlined /.\%81v/
au BufRead,BufNewFile *.* 2match Underlined /.\%81v/

" 排除搜索路徑跟檔案
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" 使用 Ag 當做搜尋工具
if executable('ag')
	"set grepprg=ag\ %s --nogroup\ --nocolor
	"set grepprg=ag\ --nogroup\ --nocolor\ --vimgrep
	"set grepformat^=%f:%l:%c:%m   " file:line:column:message
endif

"####### 顏色個性化 ##########
" ctermbg 	guifg 	背景
" ctermfg 	uifg 	前景
" cterm 	gui		字體 [none]維持不變  [underline]表示增加底線  [bold]可以將文字加粗  [reverse]會將顏色反白
" 16 色單字表
" Black、DarkBlue、DarkGreen、DarkCyan、DarkRed、DarkMagenta、Brown(DarkYellow)、LightGray(LightGrey、Gray、Grey)、DarkGray(DarkGrey)、
" Blue(LightBlue)、Green(LightGreen)、Cyan(LightCyan)、Red(LightRed)、Magenta(LightMagenta)、Yellow(LightYellow)、White。

" 當前列高亮度
hi CursorLine 		ctermbg=235		ctermfg=none  		cterm=none

" 當前行高亮度
hi CursorColumn 	ctermbg=235 	ctermfg=none  		cterm=none

" 設定行號為：粗體，前景色為深灰色，沒有背景色
hi LineNr 			ctermbg=none 	ctermfg=DarkGrey  	cterm=bold

" 設定光標所在行號顏色
" hi CursorLineNr 	ctermbg=none 	ctermfg=none 		cterm=bold

" 設定搜尋結果高亮度提示顏色
hi Search 			ctermbg=232 	ctermfg=none 		cterm=reverse

" 設定選擇模式下的反白顏色
hi Visual 			ctermbg=250 	ctermfg=none 		cterm=none

" 設定標誌行高亮度
hi SignColumn 		ctermbg=none	ctermfg=none  		cterm=none


"######## 自動執行函數 #########

" 顯示行尾空白
" show trailing white spaces
highlight WhitespaceEOL ctermbg=Red guibg=Red
match WhitespaceEOL /\s\+$/

" 刪除行尾空白
" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
function RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
        let b:curline = line(".")
        silent! %s/\s\+$//
        silent! %s/\(\s*\n\)\+\%$//
        call cursor(b:curline, b:curcol)
    endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()

