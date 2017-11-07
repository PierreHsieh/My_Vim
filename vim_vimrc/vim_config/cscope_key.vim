""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE key
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :cs find s {name} : 找出C語言name的符號
" :cs find g {name} : 找出name定義的地方
" :cs find c {name} : 找出使用name的地方
" :cs find t {name} : 找出name的字串
" :cs find e {name} : 相當於egrep功能，但速度更佳
" :cs find f {name} : 尋找檔案
" :cs find i {name} : 尋找include此檔案的檔案
" :cs find d {name} : 尋找name裡面使用到的函式

function! CscopeMode(mod)
	if a:mod == 0
		echo "CSCOPE mode 0"
		nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
		nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
		nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
	elseif a:mod == 1
		echo "CSCOPE mode 1"
		nmap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
		nmap <C-\>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
		nmap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
	elseif a:mod == 2
		echo "CSCOPE mode 2"
		nmap <C-\>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
		nmap <C-\>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
	endif
endf



