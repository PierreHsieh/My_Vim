" ###################################
"
"     自動填寫文件創建和修改時間 
"
" ###################################

" 特別注意這裡的正則表達式,'\'需要使用'\'進行轉義,不同於直接在命令模式執行!
" 這個問題折騰了近乎一晚上才發現!!

function! TimestampUpdate()
	exec ":% s#修改時間: \\d\\{4}\/\\d\\{2}\/\\d\\{2} \\d\\{1,2}:\\d\\{2}:\\d\\{2}#\修改時間: ".strftime('%Y\/%m\/%d %H:%M:%S')
endfun

autocmd BufWritePre,FileWritePre *.wiki  ks|call TimestampUpdate()|'s
autocmd BufWritePre,FileWritePre *.md  ks|call TimestampUpdate()|'s
