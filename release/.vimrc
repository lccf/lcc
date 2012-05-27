"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
set nocp
be mswin

" --------------------------------------------------
"   FileName: .vimrc
"       Desc: 主设置文件修改部份
"     Author: lcc
"      Email: leftcold@gmail.com
"    Version: 1.0.0(beta)
" LastChange: 05/27/2012 22:24
"    History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------
" load lcc {{{
" 如果你不想加载lcc,请取消下面这一行的注释
" let g:lcc_loaded = 1
fu! LoadLCC()
	let g:lcc_loaded=1
	if !exists('$VIMFILES')
		" 设置配置文件加载路径相对于系统用户目录 推荐!
		let $VIMFILES=split(&rtp, ',')[0]

		" 设置配置文件为vim安装目录，制作U盘便携版本时可使用此配置。
		"let $VIMFILES=split(&rtp, ',')[1]

		" 加入更多判断的路径设置，如果上面两个在极个别情况下出现问题，那么请考
		" 虑使用启用下面这个选项。
		"let $VIMFILES=has('unix') ? $HOME.'/.vim' :
					"\ has('win32') ? $HOME.'/vimfiles' :
					"\ split(&rtp, ',')[0]
	en
	" 加载主配置文件
	so $VIMFILES/conf/main.vim
endf
" start lcc happy viming!
if !exists('g:lcc_loaded') | cal LoadLCC() | en
" }}}

" vim:sw=4:ts=4:sts=4:noet:fdm=marker:fdc=1
