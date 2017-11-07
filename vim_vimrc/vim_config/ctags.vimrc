" #######################################
"
" Ctags 的配置
"
" #######################################
" systags.out 產生方式 可增加目錄
" ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q -R -f ~/.vim/systags.out /usr/include /usr/local/include
set tags+=~/.vim/systags.out

" tags.out 產生方式
" ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q -R -f $PWD/tags.out $PWD/*
" if filereadable("tags.out")
" 	set tags+=tags.out
" endif

if filereadable("tags")
	set tags+=./tags
endif

