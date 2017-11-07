" #######################################
"
" 對vim本身的配置
"
" #######################################

" ####### Type 1 ##########
"set statusline=
"set statusline+=%1*\[%n]                                  "buffernr
"set statusline+=%2*\ %<%F\                                "File+path
"set statusline+=%3*\ %=\ %{''.(&fenc!=''?&fenc:&enc).''}\ "Encoding
"set statusline+=%4*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
"set statusline+=%5*\ %{&ff}\                              "FileFormat (dos/unix..)
"set statusline+=%6*\ row:%l/%L\ col:%03c\ (%03p%%)\       "Rownumber/total (%)
"set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
"hi User2 ctermfg=3  ctermbg=0
"hi User6 ctermfg=3  ctermbg=4

"set statusline=%1*\[%n]%2*\ %<%F\%3*\ %=\ %{''.(&fenc!=''?&fenc:&enc).''}\%4*\ %{(&bomb?\",BOM\":\"\")}\%5*\ %{&ff}\%6*\ row:%l/%L\ col:%03c\ (%03p%%)\%0*\ \ %m%r%w\ %P\ \                      
"hi User2 ctermfg=3  ctermbg=0
"hi User6 ctermfg=3  ctermbg=4

" ####### Type 2 ##########
"set statusline=[%{expand('%:p')}][%{strlen(&fenc)?&fenc:&enc},\ %{&ff},\ %{strlen(&filetype)?&filetype:'plain'}]%{FileSize()}%{IsBinary()}%=%c,%l/%L\ [%3p%%]

" ####### Type 3 ##########
set statusline=%#filepath#[%{expand('%:p')}]%#filetype#[%{strlen(&fenc)?&fenc:&enc},\ %{&ff},\ %{strlen(&filetype)?&filetype:'plain'}]%#filesize#%{FileSize()}%{IsBinary()}%=%#position#%c,%l/%L\ [%3p%%]
 
hi filepath cterm=none ctermbg=238 ctermfg=40
hi filetype cterm=none ctermbg=238 ctermfg=45
hi filesize cterm=none ctermbg=238 ctermfg=225
hi position cterm=none ctermbg=238 ctermfg=228

function IsBinary()
    if (&binary == 0)
        return ""
    else
        return "[Binary]"
    endif
endfunction
 
function FileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <= 0
        return "[Empty]"
    endif
    if bytes < 1024
        return "[" . bytes . "B]"
    elseif bytes < 1048576
        return "[" . (bytes / 1024) . "KB]"
    else
        return "[" . (bytes / 1048576) . "MB]"
    endif
endfunction