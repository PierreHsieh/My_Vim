" #######################################
"
" NERDTree的配置
"
" #######################################

" 打開一個文件時自動關閉目錄窗口
let g:NERDTreeQuitOnOpen=1

" 目錄窗口顯示位置
"let g:NERDTreeWinPos='left'
let g:NERDTreeWinPos='right'

" 設置目錄窗口的寬度
let g:NERDTreeWinSize=30

" 顯示行號
let NERDTreeShowLineNumbers=1

" 顯示文件
let NERDTreeShowFiles=1

" 顯示隱藏文件
let NERDTreeShowHidden=1

" 顯示 Bookmarks 書籤列表
let NERDTreeShowBookmarks=1

" 設定書籤檔案
let NERDTreeBookmarksFile = expand('~/plus_config/NERDTreeBookmarks')

" 啟動的時候默認開啟 NERDTree（autocmd 可以縮寫為 au）
"autocmd VimEnter * NERDTree
" 默認開啟NERDTree時游標會選擇主窗口
"autocmd VimEnter * wincmd p

" 關閉vim時，如果打開的文件除了NERDTree沒有其他文件時，它自動關閉，減少多次按:q!。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

