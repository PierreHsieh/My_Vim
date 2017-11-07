" #######################################
"
" airline 配置
"
" #######################################

" 修改 mode 顯示訊息
let g:airline_mode_map = {
\ '__'  : '-',
\ 'n'   : 'N',
\ 'i'   : 'I',
\ 'R'   : 'R',
\ 'c'   : 'C',
\ 'v'   : 'V',
\ 'V'   : 'V',
\ '' : 'V',
\ 's'   : 'S',
\ 'S'   : 'S',
\ '' : 'S',
\ }
	
" 顯示 Tabline
let g:airline#extensions#tabline#enabled=1

" 在 Tableline 顯示上標號
let g:airline#extensions#tabline#buffer_idx_mode=1

" 因為終端機顯示上標號會產生亂碼 所以需要修改
let g:airline#extensions#tabline#buffer_idx_format = {
\ '0': '0 ',
\ '1': '1 ',
\ '2': '2 ',
\ '3': '3 ',
\ '4': '4 ',
\ '5': '5 ',
\ '6': '6 ',
\ '7': '7 ',
\ '8': '8 ',
\ '9': '9 '
\ }

"let g:airline#extensions#whitespace#enabled = 1
"let g:airline#extensions#whitespace#mixed_indent_algo=1

" Tabline 中當前buffer兩端的分隔字符
"let g:airline#extensions#tabline#left_sep=' '

" Tabline 中未激活buffer兩端的分隔字符
"let g:airline#extensions#tabline#left_alt_sep='|'

" 使用powerline字體
let g:airline_powerline_fonts=1

" 設定airline使用的特殊字體
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

