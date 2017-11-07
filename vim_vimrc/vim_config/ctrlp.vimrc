" #######################################
"
" ctrlp 配置
"
" #######################################
" 運行命令:CtrlP或:CtrlP [starting-directory]來以查找文件模式來啟用ctrlp
" 運行命令:CtrlPBuffer或:CtrlPMRU來以查找緩衝或最近打開文件模式來啟用ctrlp
" 運行命令CtrlPMixed來查找文件、查找緩衝和最近打開文件混合模式來啟動ctrlp
" 基本使用
" 按<c-f>和<c-b>在三種查找模式中互相切換
" 按<c-y>來創建新文件和對應的父目錄
" 按<c-d>來切換到只查找文件名而不是全路徑
" 按<c-j>，<c-k>或箭頭方向鍵來移動查找結果列表
" 按<c-t>或<c-v>，<c-x>來以新標籤或分割窗口的方式來打開文件
" 按<c-z>來標識或取消標識文件，然後按<c-o>來打開文件
" 按<c-n>，<c-p>來在提示歷史中選擇下一個/上一個字符串

" 設定搜尋結果視窗大小
let g:ctrlp_match_window='bottom,order:btt,min:1,max:20,results:20'

" 最近打開的文件歷史的數目
"let g:ctrlp_mruf_max=500

" 用來設置你只是想在CtrlP中隱藏的文件和目錄 使用正則表達式來指定匹配模式
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|tags|.out)$',
    \ }	
" 相關設定沒有使用 \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',

" 如果有安裝 ag 則使用
if executable('ag')
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
" 使用 Ag 當做搜尋工具
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --hidden 
			\ --ignore .git 
			\ --ignore .out
			\ --ignore tags
			\ --ignore .svn 
			\ --ignore .hg 
			\ --ignore .DS_Store
			\ -g ""'

" 禁止使用緩存
" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0
endif
