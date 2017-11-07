" #######################################
"
" Easy Grep 的配置
"
" #######################################
" <Leader>vv # 搜索光標所在單詞，並匹配出所有結果，類似 gstar
" <Leader>vV # 搜索光標所在單詞，全詞匹配，類似 star
" <Leader>va # 類似 vv，但是會把結果添加到之前的搜索列表
" <Leader>vA # 類似 vV，但是會把結果添加到之前的搜索列表
" <Leader>vr # 全局搜索光標所在單詞，並替換想要的單詞
" 命令行
" :Grep [arg] # 類似 <Leader>vv，使用 ! 類似<Leader>vV
" :GrepAdd [arg] # 類似 <Leader>va，使用 ! 類似<Leader>vA
" :Replace [target] [replacement] # 類似 <Leader>vr
" :ReplaceUndo # 撤銷替換操作


"設定搜索方式 All:0, Open Buffers:1, TrackExt:2
let g:EasyGrepMode = 2     

" 搜索方式 vimgrep:0, grepprg:1
let g:EasyGrepCommand=1

" 遞歸搜索
let g:EasyGrepRecursive=1

" 搜索中區分大小寫
let g:EasyGrepIgnoreCase=1

" 排除搜尋的檔案跟資料夾
let g:EasyGrepFilesToExclude=".svn,.git,*.bak,*~,cscope.*,*.a,*.o,*.pyc,*.bak"

