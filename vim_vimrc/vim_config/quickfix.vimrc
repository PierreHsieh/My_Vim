" ######################################
"
"     quickfix功能的配置
"
" ######################################

" 可以將QuickfixToggle映射到快捷鍵,方便Quickfix窗口的打開/關閉l
let g:QuickfixOpen=0
function! QuickfixToggle()
	if g:QuickfixOpen
		:cclose
		let g:QuickfixOpen=0
	else
		:botright copen
		let g:QuickfixOpen=1
	endif
endf
