" #######################################
"
" Vundle
"
" #######################################
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" -------------------------------------
" 搜尋插件
"Plugin 'ggreer/the_silver_searcher'
Plugin 'rking/ag.vim'

" 文件搜尋
"Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" -------------------------------------
" 檔案樹狀視窗
Plugin 'scrooloose/nerdtree'

" 函數視窗
Plugin 'majutsushi/tagbar'

" 狀態列
Plugin 'vim-airline/vim-airline'

" c++ 高亮度
Plugin 'octol/vim-cpp-enhanced-highlight'

" ()[]{}<> 高亮度
Plugin 'kien/rainbow_parentheses.vim'

" Source Explorer
Plugin 'wesleyche/SrcExpl'

" -------------------------------------
" git 版本控制 顯示的訊息與 TortoiseGit 顯示的不同
Plugin 'airblade/vim-gitgutter'

" git 差異比對
Plugin 'tpope/vim-fugitive'

" 書籤管理
"Plugin 'kshenoy/vim-signature'
Plugin 'MattesGroeger/vim-bookmarks'

" 多光標編輯
Plugin 'terryma/vim-multiple-cursors'

" 可以伸縮選中的部分
Plugin 'terryma/vim-expand-region'

" 全局替換
Plugin 'dkprice/vim-easygrep'

" 批量註釋
Plugin 'scrooloose/nerdcommenter'

" 時光機 記錄所有打字記錄
Plugin 'sjl/gundo.vim'

" 快速跳轉
Plugin 'easymotion/vim-easymotion'

" .c .h 檔案快速跳轉
Plugin 'derekwyatt/vim-fswitch'

" -------------------------------------
" 符號補全
Plugin 'jiangmiao/auto-pairs'

" 模板補全
Plugin 'SirVer/ultisnips'

" 模板補全資料庫
Plugin 'honza/vim-snippets'

" Python 補全
Plugin 'davidhalter/jedi-vim'

" c c++ 補全 vim需要支援 lua
Plugin 'Shougo/neocomplete.vim'
" 依賴 Shougo/neocomplete.vim 補全
Plugin 'Shougo/neoinclude.vim'
" 以下兩個補全會與 ultisnips 衝突
"Plugin 'Shougo/neco-vim'
"Plugin 'Shougo/neco-syntax'

" 異步執行 shell 指令
Plugin 'skywind3000/asyncrun.vim'

" ########## 以下是使用上不頻繁 ##########
" 對齊 "使用上不頻繁
"Plugin 'junegunn/vim-easy-align'
"Plugin 'godlygeek/tabular'

" 成對符號修改 "使用上不需要
"Plugin 'tpope/vim-surround'

" 重複操作上一條指令 配合 surround
"Plugin 'tpope/vim-repeat'


" ########## 以下測試後不使用 ##########
" 函數搜尋 直接使用指令就可以
"Plugin 'brookhong/cscope.vim'

" 文件搜索 配合 vim-multiple-cursors 來做字串替換 但是沒辦法設定忽略搜尋檔案
"Plugin 'dyng/ctrlsf.vim'

" 代碼檢測 需要使用 clang 做處理 不是在linux下使用 clang 編譯會產生設定上的問題
"Plugin 'w0rp/ale'

" 使用 Tab 自動執行指令 習慣後在沒有安裝的vim會產生困惑
"Plugin 'ervandew/supertab'

" 語法檢查 依賴 clang
"Plugin 'vim-syntastic/syntastic'

"########################################

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

