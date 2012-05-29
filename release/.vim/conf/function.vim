" --------------------------------------------------
"    FileName: functions.vim
"        Desc: 函数配置文件
"      Author: lcc
"       Email: leftcold@gmail.com
"     Version: 1.0.0(beta)
"  LastChange: 05/30/2012 00:46
"     History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------

" --------------------------------------------------
" [格式化和转换函数] {{{
" --------------------------------------------------
" css格式函数
fu! CssFF(t)
	" 合并Css到一行
	if(a:t=='jtl')
		%s/{\n\s*/{ /ge
		%s/;\n\s*/; /ge
		%s/\s*}/ }/ge
	" 拆分Css到多行
	elsei(a:t=='stl')
		%s/{\s*/{\r\t/ge
		%s/;\s*/;\r\t/ge
		%s/\t*}/}/ge
	" 转换Css字符中文
	elsei(a:t=='ft')
		%s/\(font-family:.*\|font:.*\)宋体/\1\\5B8B\\4F53/ge
		%s/\(font-family:.*\|font:.*\)微软雅黑/\1\\5FAE\\8F6F\\96C5\\9ED1/ge
	" 转换样式颜色为小写
	elsei(a:t=='ctl')
		%s/#\([0-9a-fA-F]\{3,6\}\)\(\s\|\n\|;\|}\)/\='#'.tolower(submatch(1)).submatch(2)/ge
	" 转换样式颜色为大写
	elsei(a:t=='ctu')
		%s/#\([0-9a-fA-F]\{3,6\}\)\(\s\|\n\|;\|}\)/\='#'.toupper(submatch(1)).submatch(2)/ge
	" 在}后跟断行
	elsei(a:t==1)
		%s/}\s*\(\S\)/}\r\1/ge
	" 在{前加空格
	elsei(a:t==2)
		%s/\(\S\){/\1 {/ge
	" 在}前添加换行
	elsei(a:t==3)
		%s/\(\S\)}/\1\r}/ge
	" 在注释前后断行
	elsei(a:t==4)
		%s/}\s\/\*/}\r\/\*/ge
		%s/\*\/\s\.\|\*\/\./\*\/\r\./ge
	" 在,后添加空格
	elsei(a:t==5)
		%s/,\(\S\)/, \1/ge
	elsei(a:t==6)
		%s/\([a-zA-Z0-9]\)}/\1;\r}/ge
	" 生成发布文件
	elsei(a:t=='build')
		"call CssFF('jtl')
		%s/\s{/{/ge
		%s/{\s/{/ge
		%s/;\s/;/ge
		%s/,\s/,/ge
		"%s/\n//g
	" 格式化代码
	elsei(a:t=='ff')
		cal CssFF('stl')
		cal CssFF(1)
		cal CssFF(2)
		cal CssFF(3)
		cal CssFF(4)
	en
endf
" 映射键
nn <A-f>j :cal CssFF('jtl')<CR>
nn <A-f>s :cal CssFF('stl')<CR>
nn <A-f>l :cal CssFF('ctl')<CR>
nn <A-f>u :cal CssFF('ctu')<CR>
nn <A-f>t :cal CssFF('ft')<CR>

fu! MyFF(t)
	if a:t=='sw'
		%s/^\s*//ge
	elsei a:t=='ew'
		%s/\s*$//ge
	en
endf
" }}}
" --------------------------------------------------
" [自动完成函数] {{{
" --------------------------------------------------
" 自动完成
fu! InsertTabWrapper()
	let col=col('.')-1
	return (!col || getline('.')[col-1] !~ '\k') ? "\<TAB>" : "\<C-P>"
endf
" 映射键
ino <TAB> <C-R>=InsertTabWrapper()<CR>
" 强制TAB键
ino <S-TAB> <C-R>="\<TAB>"<CR>
" }}}
" --------------------------------------------------
" [空格与制表切换] {{{
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
" }}}
" --------------------------------------------------
" [参考线切换] {{{
" --------------------------------------------------
fu! ReferenceLine(t)
  let ccnum = &cc
  if ccnum == '' | let ccnum = 0 | en
  let csw = &sw
  if a:t == 'add'
    let ccnum = ccnum + csw
    exec "setl cc=".ccnum
  elsei a:t == 'subtract'
    let ccnum = ccnum - csw
    if ccnum >= 0 | exec "setl cc=".ccnum | en
  en
endf
nn <silent> <A-u> :call ReferenceLine('subtract')<CR>
nn <silent> <A-o> :call ReferenceLine('add')<CR>
" vim:sw=4:ts=4:sts=4:noet:fdm=marker:fdc=1
