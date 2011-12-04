" --------------------------------------------------
" [空格与制表切换] {{{1
" --------------------------------------------------
fu! ToggleTab(t)
    if a:t == 'tab'
        setl noet
        ret!
    elsei a:t == 'space'
        setl et
        ret
    en
endf
com! -nargs=0 ToSpace call ToggleTab('space')
com! -nargs=0 ToTab call ToggleTab('tab')
" 1}}}
