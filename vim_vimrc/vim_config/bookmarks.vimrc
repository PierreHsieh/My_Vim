" #######################################
"
" bookmarks 的配置
"
" #######################################

" 設定書簽圖案
let g:bookmark_sign='♥'
" 高亮度顯示書簽圖案
hi BookmarkSign             ctermfg=blue         ctermbg=none
" 高亮度顯示書簽列
hi BookmarkLine             ctermfg=blue         ctermbg=none

" 設定註解書簽圖案
let g:bookmark_annotation_sign='♠️'
" 高亮度顯示註解書簽圖案
hi BookmarkAnnotationSign   ctermfg=red         ctermbg=none
" 高亮度顯示註解書簽列
hi BookmarkAnnotationLine   ctermfg=red         ctermbg=none

" 書簽列高亮度
let g:bookmark_highlight_lines=1

" 關閉預設按鍵映射
let g:bookmark_no_default_key_mappings=1

" 跳轉後書籤置中
let g:bookmark_center=1

" 使用 ma 在 quickfix 顯示全部書簽 選擇後關閉 quickfix 
let g:bookmark_auto_close=1

" 設定在每個工作目錄下會產生書籤檔案
let g:bookmark_save_per_working_dir=1

" 自動存檔
let g:bookmark_auto_save=1

" working directory : vim 最初執行時路徑
" buffer directory : 檔案路徑
" vim 設定 "set autochdir" => Bookmarks per working directory = Bookmarks per buffer
" 工作路徑會自動變成檔案路徑

" 使用當前檔案當做 bookmark 檔案路徑
let g:bookmark_manage_per_buffer=1

" 會取得當下工作目錄的 .git 資料夾位置來使用
" Bookmarks per working directory
" Finds the Git super-project directory.
function! g:BMWorkDirFileLocation()
    let filename = 'bookmarks'
    let location = ''
    if isdirectory('.git')
        " Current work dir is git's work tree
        let location = getcwd().'/.git'
    else
        " Look upwards (at parents) for a directory named '.git'
        let location = finddir('.git', '.;')
    endif
    if len(location) > 0
        return location.'/'.filename
    else
        return getcwd().'/.'.filename
    endif
endfunction

" 依照目前使用的檔案路徑尋找 .git 資料夾來使用
" Bookmarks per buffer
" Finds the Git super-project directory based on the file passed as an argument.
function! g:BMBufferFileLocation(file)
    let filename = 'vim-bookmarks'
    let location = ''
    if isdirectory(fnamemodify(a:file, ":p:h").'/.git')
        " Current work dir is git's work tree
        let location = fnamemodify(a:file, ":p:h").'/.git'
    else
        " Look upwards (at parents) for a directory named '.git'
        let location = finddir('.git', fnamemodify(a:file, ":p:h").'/.;')
    endif
    if len(location) > 0
        return simplify(location.'/.'.filename)
    else
        return simplify(fnamemodify(a:file, ":p:h").'/.'.filename)
    endif
endfunction

