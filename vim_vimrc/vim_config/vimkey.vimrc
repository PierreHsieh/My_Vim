" #######################################
"
" vim key 配置
"
" #######################################

" ####### 按鍵個性化 ##########
" 映射按鍵設定
let mapleader=","

" ####### Cscope 搜尋插件 ##########
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" ####### AsyncRun ##########
" cpplint format
nmap <Leader><Leader>c :AsyncRun cpplint.py %:p<CR>
" pep8 format
nmap <Leader><Leader>p :AsyncRun pycodestyle.py --show-source %:p<CR>
nmap <Leader><Leader>pp :AsyncRun pycodestyle.py --show-source --show-pep8 %:p<CR>

" ####### ultisnips 模板補全插件 ##########
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

" ####### expand-region 選擇插件 ##########
map J <Plug>(expand_region_expand)
map K <Plug>(expand_region_shrink)

" ####### Ctags 插件 ##########
" 正向遍歷同名標籤
nmap <Leader>tn :tnext<CR>
" 反向遍歷同名標籤
nmap <Leader>tp :tprevious<CR>

" ####### fswitch 插件 ##########
" .c .h 檔案切換
nmap <silent> <Leader>sw :FSHere<cr>

" ####### 定義:Man命令查看各類man信息的快捷鍵 ##########
nmap <Leader>man :Man 3 <cword><CR>

" ####### NerdTree 插件 ##########
map <Leader>e :NERDTreeToggle<CR>

" ####### Tagbar 插件 ##########
map <Leader>t :TagbarToggle<CR>

" ####### Source Explorer 插件 ##########
nmap <Leader>r :SrcExplToggle<CR>
" 選擇上一個搜尋結果
let g:SrcExpl_prevDefKey="<leader>p"
" 選擇下一個搜尋結果
let g:SrcExpl_nextDefKey="<leader>n"

" ####### gundo 插件 ##########
nnoremap <leader>u :GundoToggle<CR>

" ####### Gitgutter 插件 ##########
" 尋找下一個差異
nmap <Leader>gj <Plug>GitGutterNextHunk
" 尋找上一個差異
nmap <Leader>gk <Plug>GitGutterPrevHunk

" ####### Airline 插件 ##########
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>j <Plug>AirlineSelectPrevTab
nmap <leader>k <Plug>AirlineSelectNextTab

" ####### easymotion 插件 ##########
" 兩個字母搜尋 s{char}{char} to move to {char}{char}
nmap <Leader><Leader>s <Plug>(easymotion-overwin-f2)
" 單字移動 Move to word
map  <Leader><Leader>d <Plug>(easymotion-bd-w)
nmap <Leader><Leader>d <Plug>(easymotion-overwin-w)
" 一個字母搜尋 <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
" 行移動 Move to line
map <Leader><Leader>g <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>g <Plug>(easymotion-overwin-line)
" 左移
map <leader><leader>h <Plug>(easymotion-linebackward)
" 下移
map <leader><Leader>j <Plug>(easymotion-j)
" 上移
map <leader><Leader>k <Plug>(easymotion-k)
" 右移
map <leader><leader>l <Plug>(easymotion-lineforward)
" 重複上一次操作, 類似repeat插件
"map <leader><leader>. <Plug>(easymotion-repeat)

" ####### Bookmark 插件 ##########
" mm 添加/刪除書籤(當前行)
" mi 添加/編輯/刪除當前行註釋書籤
" mn 跳轉到當前 buffer 的下一個書籤
" mp 跳轉到當前 buffer 的前一個書籤
" ma 在 quickfix 窗口中列出所有書籤(toggle)
" mc 清除當前 buffer 內的所有書籤
" mx 清除所有 buffer 內的書籤
" 保存書籤到文件 :BookmarkSave <FILE_PATH>
" 從文件加載書籤 :BookmarkLoad <FILE_PATH>
function! BookmarkMapKeys()
    nmap mm :BookmarkToggle<CR>
    nmap mi :BookmarkAnnotate<CR>
    nmap mn :BookmarkNext<CR>
    nmap mp :BookmarkPrev<CR>
    nmap ma :BookmarkShowAll<CR>
    nmap mc :BookmarkClear<CR>
    nmap mx :BookmarkClearAll<CR>
    nmap mkk :BookmarkMoveUp
    nmap mjj :BookmarkMoveDown
endfunction
function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap mn
    unmap mp
    unmap ma
    unmap mc
    unmap mx
    unmap mkk
    unmap mjj
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()


" ====== 以下使用作者預設
" ####### ctrlp 插件 ##########
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

" ####### signature 插件 ##########
" m[a-zA-Z] 打標籤
" '[a-zA-Z] 跳轉到標籤位置
" '. 最後一次變更的地方
" '' 跳回來的地方(最近兩個位置跳轉)
" m<space> 去除所有標籤
" ]` 跳轉到前一個書籤
" [` 跳轉到後一個書籤
" ]- 跳轉到之前同一類型的 numbered marks 書籤行
" [- 跳轉到之後同一類型的 numbered marks 書籤行

" ####### multiple-cursors 插件 ##########
" Default mapping
" 選擇下一個關鍵字
"let g:multi_cursor_next_key='<C-n>'
" 選擇上一個關鍵字
"let g:multi_cursor_prev_key='<C-p>'
" 跳過當前的關鍵字
"let g:multi_cursor_skip_key='<C-x>'
" 離開選擇功能
"let g:multi_cursor_quit_key='<Esc>'

" ####### EasyGrep 插件 ##########
" <Leader>vv # 搜索光標所在單詞，並匹配出所有結果，類似 gstar
" <Leader>vV # 搜索光標所在單詞，全詞匹配，類似 star
" <Leader>va # 類似 vv，但是會把結果添加到之前的搜索列表
" <Leader>vA # 類似 vV，但是會把結果添加到之前的搜索列表
" <Leader>vr # 全局搜索光標所在單詞，並替換想要的單詞

" ####### nerdcommenter 插件 ##########
" <leader>cc 加註釋
" <leader>cu 取消註釋
" <leader>c<space> 加上/解開註釋, 智能判斷
" <leader>cy 先複製, 再註解(p可以進行黏貼)
" <leader>cm 只用一組符號來註釋
" <leader>cs 優美的註釋
" <leader>cb 是在代碼的最前端加註釋
" <leader>ca 在可選的註釋方式之間切換，比如C/C++ 的塊註釋/* */和行註釋//
" <leader>cA 在當前行尾添加註釋符，並進入Insert模式
" Normal模式下，幾乎所有命令前面都可以指定行數
" Visual模式下執行命令，會對選中的特定區塊進行註釋/反註釋
" 各命令前綴是可以自己設置的，通常是逗號’,'或者’\’.
" 使用 [count]aa 自動註解
imap <C-a> <ESC><leader>c<space>i
nmap <C-a> <leader>c<space>
nmap aa <leader>c<space>
nmap AA <leader>c<space>
vmap a <leader>c<space>
vmap A <leader>c<space>
nnoremap <expr> v:count == 0 ? '':v:count.'aa'
nnoremap <expr> v:count == 0 ? '':v:count.'AA'

" ====== 以下不使用

" ####### Key Mapping ##########
" vim 定義括號引號補全 使用Plug取代
" inoremap ( ()<ESC>i
" inoremap " ""<Esc>i
" inoremap ' ''<Esc>i
" inoremap [ []<ESC>i
" inoremap < <><ESC>i
" inoremap {<CR> {<CR>}<Esc>ko
" inoremap {{ {}<ESC>i


