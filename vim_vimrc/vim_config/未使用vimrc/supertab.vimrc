" #######################################
"
" SuperTab 的配置
"
" #######################################

" 設置按下<Tab>後默認的補全方式, 默認是<C-P>,
" 現在改為<C-X><C-O>. 關於<C-P>的補全方式,
" 還有其他的補全方式, 你可以看看下面的一些幫助:
" :help ins-completion
" :help compl-omni
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

" 0 - 不記錄上次的補全方式
" 1 - 記住上次的補全方式,直到用其他的補全命令改變它
" 2 - 記住上次的補全方式,直到按ESC退出插入模式為止
let g:SuperTabRetainCompletionType=2

